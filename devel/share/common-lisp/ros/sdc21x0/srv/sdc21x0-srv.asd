
(cl:in-package :asdf)

(defsystem "sdc21x0-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Flags" :depends-on ("_package_Flags"))
    (:file "_package_Flags" :depends-on ("_package"))
  ))