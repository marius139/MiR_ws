
(cl:in-package :asdf)

(defsystem "sdc21x0-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Encoders" :depends-on ("_package_Encoders"))
    (:file "_package_Encoders" :depends-on ("_package"))
    (:file "MotorCurrents" :depends-on ("_package_MotorCurrents"))
    (:file "_package_MotorCurrents" :depends-on ("_package"))
    (:file "StampedEncoders" :depends-on ("_package_StampedEncoders"))
    (:file "_package_StampedEncoders" :depends-on ("_package"))
  ))