;; Auto-generated. Do not edit!


(when (boundp 'people_msgs::Person)
  (if (not (find-package "PEOPLE_MSGS"))
    (make-package "PEOPLE_MSGS"))
  (shadow 'Person (find-package "PEOPLE_MSGS")))
(unless (find-package "PEOPLE_MSGS::PERSON")
  (make-package "PEOPLE_MSGS::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass people_msgs::Person
  :super ros::object
  :slots (_name _position _velocity _reliability _tagnames _tags ))

(defmethod people_msgs::Person
  (:init
   (&key
    ((:name __name) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Point :init))
    ((:reliability __reliability) 0.0)
    ((:tagnames __tagnames) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _reliability (float __reliability))
   (setq _tagnames __tagnames)
   (setq _tags __tags)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:reliability
   (&optional __reliability)
   (if __reliability (setq _reliability __reliability)) _reliability)
  (:tagnames
   (&optional __tagnames)
   (if __tagnames (setq _tagnames __tagnames)) _tagnames)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Point _velocity
    (send _velocity :serialization-length)
    ;; float64 _reliability
    8
    ;; string[] _tagnames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tagnames)) 4
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Point _velocity
       (send _velocity :serialize s)
     ;; float64 _reliability
       (sys::poke _reliability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _tagnames
     (write-long (length _tagnames) s)
     (dolist (elem _tagnames)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Point _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _reliability
     (setq _reliability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _tagnames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tagnames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tagnames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get people_msgs::Person :md5sum-) "0b7c0818b76476f3863bd13f4d59f8df")
(setf (get people_msgs::Person :datatype-) "people_msgs/Person")
(setf (get people_msgs::Person :definition-)
      "string              name
geometry_msgs/Point position
geometry_msgs/Point velocity
float64             reliability
string[]            tagnames
string[]            tags


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :people_msgs/Person "0b7c0818b76476f3863bd13f4d59f8df")


