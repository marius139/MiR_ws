;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::UserPrompt)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'UserPrompt (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::USERPROMPT")
  (make-package "MIR_MSGS::USERPROMPT"))

(in-package "ROS")
;;//! \htmlinclude UserPrompt.msg.html


(defclass mir_msgs::UserPrompt
  :super ros::object
  :slots (_has_request _guid _user_group _question _options _timeout ))

(defmethod mir_msgs::UserPrompt
  (:init
   (&key
    ((:has_request __has_request) nil)
    ((:guid __guid) "")
    ((:user_group __user_group) "")
    ((:question __question) "")
    ((:options __options) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:timeout __timeout) (instance ros::time :init))
    )
   (send-super :init)
   (setq _has_request __has_request)
   (setq _guid (string __guid))
   (setq _user_group (string __user_group))
   (setq _question (string __question))
   (setq _options __options)
   (setq _timeout __timeout)
   self)
  (:has_request
   (&optional __has_request)
   (if __has_request (setq _has_request __has_request)) _has_request)
  (:guid
   (&optional __guid)
   (if __guid (setq _guid __guid)) _guid)
  (:user_group
   (&optional __user_group)
   (if __user_group (setq _user_group __user_group)) _user_group)
  (:question
   (&optional __question)
   (if __question (setq _question __question)) _question)
  (:options
   (&optional __options)
   (if __options (setq _options __options)) _options)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; bool _has_request
    1
    ;; string _guid
    4 (length _guid)
    ;; string _user_group
    4 (length _user_group)
    ;; string _question
    4 (length _question)
    ;; string[] _options
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _options)) 4
    ;; duration _timeout
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _has_request
       (if _has_request (write-byte -1 s) (write-byte 0 s))
     ;; string _guid
       (write-long (length _guid) s) (princ _guid s)
     ;; string _user_group
       (write-long (length _user_group) s) (princ _user_group s)
     ;; string _question
       (write-long (length _question) s) (princ _question s)
     ;; string[] _options
     (write-long (length _options) s)
     (dolist (elem _options)
       (write-long (length elem) s) (princ elem s)
       )
     ;; duration _timeout
       (write-long (send _timeout :sec) s) (write-long (send _timeout :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _has_request
     (setq _has_request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _user_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _question
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _question (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _options
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _options (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _options i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; duration _timeout
     (send _timeout :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timeout :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::UserPrompt :md5sum-) "731624029b0041f5bffe8cc3d3ed3abe")
(setf (get mir_msgs::UserPrompt :datatype-) "mir_msgs/UserPrompt")
(setf (get mir_msgs::UserPrompt :definition-)
      "bool has_request
string guid
string user_group
string question
string[] options
duration timeout
")



(provide :mir_msgs/UserPrompt "731624029b0041f5bffe8cc3d3ed3abe")


