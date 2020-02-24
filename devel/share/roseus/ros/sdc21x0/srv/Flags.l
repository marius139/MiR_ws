;; Auto-generated. Do not edit!


(when (boundp 'sdc21x0::Flags)
  (if (not (find-package "SDC21X0"))
    (make-package "SDC21X0"))
  (shadow 'Flags (find-package "SDC21X0")))
(unless (find-package "SDC21X0::FLAGS")
  (make-package "SDC21X0::FLAGS"))
(unless (find-package "SDC21X0::FLAGSREQUEST")
  (make-package "SDC21X0::FLAGSREQUEST"))
(unless (find-package "SDC21X0::FLAGSRESPONSE")
  (make-package "SDC21X0::FLAGSRESPONSE"))

(in-package "ROS")





(defclass sdc21x0::FlagsRequest
  :super ros::object
  :slots (_digitalPort ))

(defmethod sdc21x0::FlagsRequest
  (:init
   (&key
    ((:digitalPort __digitalPort) 0)
    )
   (send-super :init)
   (setq _digitalPort (round __digitalPort))
   self)
  (:digitalPort
   (&optional __digitalPort)
   (if __digitalPort (setq _digitalPort __digitalPort)) _digitalPort)
  (:serialization-length
   ()
   (+
    ;; int32 _digitalPort
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _digitalPort
       (write-long _digitalPort s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _digitalPort
     (setq _digitalPort (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sdc21x0::FlagsResponse
  :super ros::object
  :slots (_response ))

(defmethod sdc21x0::FlagsResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sdc21x0::Flags
  :super ros::object
  :slots ())

(setf (get sdc21x0::Flags :md5sum-) "9eda35869d1a72f6c996c2043f7b4423")
(setf (get sdc21x0::Flags :datatype-) "sdc21x0/Flags")
(setf (get sdc21x0::Flags :request) sdc21x0::FlagsRequest)
(setf (get sdc21x0::Flags :response) sdc21x0::FlagsResponse)

(defmethod sdc21x0::FlagsRequest
  (:response () (instance sdc21x0::FlagsResponse :init)))

(setf (get sdc21x0::FlagsRequest :md5sum-) "9eda35869d1a72f6c996c2043f7b4423")
(setf (get sdc21x0::FlagsRequest :datatype-) "sdc21x0/FlagsRequest")
(setf (get sdc21x0::FlagsRequest :definition-)
      "int32 digitalPort
---
bool response

")

(setf (get sdc21x0::FlagsResponse :md5sum-) "9eda35869d1a72f6c996c2043f7b4423")
(setf (get sdc21x0::FlagsResponse :datatype-) "sdc21x0/FlagsResponse")
(setf (get sdc21x0::FlagsResponse :definition-)
      "int32 digitalPort
---
bool response

")



(provide :sdc21x0/Flags "9eda35869d1a72f6c996c2043f7b4423")


