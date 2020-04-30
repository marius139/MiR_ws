
(cl:in-package :asdf)

(defsystem "people_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "People" :depends-on ("_package_People"))
    (:file "_package_People" :depends-on ("_package"))
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
    (:file "PersonStamped" :depends-on ("_package_PersonStamped"))
    (:file "_package_PersonStamped" :depends-on ("_package"))
    (:file "PositionMeasurement" :depends-on ("_package_PositionMeasurement"))
    (:file "_package_PositionMeasurement" :depends-on ("_package"))
    (:file "PositionMeasurementArray" :depends-on ("_package_PositionMeasurementArray"))
    (:file "_package_PositionMeasurementArray" :depends-on ("_package"))
  ))