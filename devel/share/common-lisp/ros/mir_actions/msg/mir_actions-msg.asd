
(cl:in-package :asdf)

(defsystem "mir_actions-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MirMoveBaseAction" :depends-on ("_package_MirMoveBaseAction"))
    (:file "_package_MirMoveBaseAction" :depends-on ("_package"))
    (:file "MirMoveBaseActionFeedback" :depends-on ("_package_MirMoveBaseActionFeedback"))
    (:file "_package_MirMoveBaseActionFeedback" :depends-on ("_package"))
    (:file "MirMoveBaseActionGoal" :depends-on ("_package_MirMoveBaseActionGoal"))
    (:file "_package_MirMoveBaseActionGoal" :depends-on ("_package"))
    (:file "MirMoveBaseActionResult" :depends-on ("_package_MirMoveBaseActionResult"))
    (:file "_package_MirMoveBaseActionResult" :depends-on ("_package"))
    (:file "MirMoveBaseFeedback" :depends-on ("_package_MirMoveBaseFeedback"))
    (:file "_package_MirMoveBaseFeedback" :depends-on ("_package"))
    (:file "MirMoveBaseGoal" :depends-on ("_package_MirMoveBaseGoal"))
    (:file "_package_MirMoveBaseGoal" :depends-on ("_package"))
    (:file "MirMoveBaseResult" :depends-on ("_package_MirMoveBaseResult"))
    (:file "_package_MirMoveBaseResult" :depends-on ("_package"))
    (:file "RelativeMoveAction" :depends-on ("_package_RelativeMoveAction"))
    (:file "_package_RelativeMoveAction" :depends-on ("_package"))
    (:file "RelativeMoveActionFeedback" :depends-on ("_package_RelativeMoveActionFeedback"))
    (:file "_package_RelativeMoveActionFeedback" :depends-on ("_package"))
    (:file "RelativeMoveActionGoal" :depends-on ("_package_RelativeMoveActionGoal"))
    (:file "_package_RelativeMoveActionGoal" :depends-on ("_package"))
    (:file "RelativeMoveActionResult" :depends-on ("_package_RelativeMoveActionResult"))
    (:file "_package_RelativeMoveActionResult" :depends-on ("_package"))
    (:file "RelativeMoveFeedback" :depends-on ("_package_RelativeMoveFeedback"))
    (:file "_package_RelativeMoveFeedback" :depends-on ("_package"))
    (:file "RelativeMoveGoal" :depends-on ("_package_RelativeMoveGoal"))
    (:file "_package_RelativeMoveGoal" :depends-on ("_package"))
    (:file "RelativeMoveResult" :depends-on ("_package_RelativeMoveResult"))
    (:file "_package_RelativeMoveResult" :depends-on ("_package"))
  ))