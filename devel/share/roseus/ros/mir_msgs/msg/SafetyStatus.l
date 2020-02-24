;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::SafetyStatus)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'SafetyStatus (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::SAFETYSTATUS")
  (make-package "MIR_MSGS::SAFETYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SafetyStatus.msg.html


(defclass mir_msgs::SafetyStatus
  :super ros::object
  :slots (_is_connected _is_firmware_ok _firmware_version _in_protective_stop _in_emergency_stop _sto_feedback _is_restart_required _is_safety_muted _is_limited_speed_active _in_sleep_mode _in_manual_mode _is_manual_mode_restart_required ))

(defmethod mir_msgs::SafetyStatus
  (:init
   (&key
    ((:is_connected __is_connected) nil)
    ((:is_firmware_ok __is_firmware_ok) nil)
    ((:firmware_version __firmware_version) 0)
    ((:in_protective_stop __in_protective_stop) nil)
    ((:in_emergency_stop __in_emergency_stop) nil)
    ((:sto_feedback __sto_feedback) nil)
    ((:is_restart_required __is_restart_required) nil)
    ((:is_safety_muted __is_safety_muted) nil)
    ((:is_limited_speed_active __is_limited_speed_active) nil)
    ((:in_sleep_mode __in_sleep_mode) nil)
    ((:in_manual_mode __in_manual_mode) nil)
    ((:is_manual_mode_restart_required __is_manual_mode_restart_required) nil)
    )
   (send-super :init)
   (setq _is_connected __is_connected)
   (setq _is_firmware_ok __is_firmware_ok)
   (setq _firmware_version (round __firmware_version))
   (setq _in_protective_stop __in_protective_stop)
   (setq _in_emergency_stop __in_emergency_stop)
   (setq _sto_feedback __sto_feedback)
   (setq _is_restart_required __is_restart_required)
   (setq _is_safety_muted __is_safety_muted)
   (setq _is_limited_speed_active __is_limited_speed_active)
   (setq _in_sleep_mode __in_sleep_mode)
   (setq _in_manual_mode __in_manual_mode)
   (setq _is_manual_mode_restart_required __is_manual_mode_restart_required)
   self)
  (:is_connected
   (&optional __is_connected)
   (if __is_connected (setq _is_connected __is_connected)) _is_connected)
  (:is_firmware_ok
   (&optional __is_firmware_ok)
   (if __is_firmware_ok (setq _is_firmware_ok __is_firmware_ok)) _is_firmware_ok)
  (:firmware_version
   (&optional __firmware_version)
   (if __firmware_version (setq _firmware_version __firmware_version)) _firmware_version)
  (:in_protective_stop
   (&optional __in_protective_stop)
   (if __in_protective_stop (setq _in_protective_stop __in_protective_stop)) _in_protective_stop)
  (:in_emergency_stop
   (&optional __in_emergency_stop)
   (if __in_emergency_stop (setq _in_emergency_stop __in_emergency_stop)) _in_emergency_stop)
  (:sto_feedback
   (&optional __sto_feedback)
   (if __sto_feedback (setq _sto_feedback __sto_feedback)) _sto_feedback)
  (:is_restart_required
   (&optional __is_restart_required)
   (if __is_restart_required (setq _is_restart_required __is_restart_required)) _is_restart_required)
  (:is_safety_muted
   (&optional __is_safety_muted)
   (if __is_safety_muted (setq _is_safety_muted __is_safety_muted)) _is_safety_muted)
  (:is_limited_speed_active
   (&optional __is_limited_speed_active)
   (if __is_limited_speed_active (setq _is_limited_speed_active __is_limited_speed_active)) _is_limited_speed_active)
  (:in_sleep_mode
   (&optional __in_sleep_mode)
   (if __in_sleep_mode (setq _in_sleep_mode __in_sleep_mode)) _in_sleep_mode)
  (:in_manual_mode
   (&optional __in_manual_mode)
   (if __in_manual_mode (setq _in_manual_mode __in_manual_mode)) _in_manual_mode)
  (:is_manual_mode_restart_required
   (&optional __is_manual_mode_restart_required)
   (if __is_manual_mode_restart_required (setq _is_manual_mode_restart_required __is_manual_mode_restart_required)) _is_manual_mode_restart_required)
  (:serialization-length
   ()
   (+
    ;; bool _is_connected
    1
    ;; bool _is_firmware_ok
    1
    ;; int32 _firmware_version
    4
    ;; bool _in_protective_stop
    1
    ;; bool _in_emergency_stop
    1
    ;; bool _sto_feedback
    1
    ;; bool _is_restart_required
    1
    ;; bool _is_safety_muted
    1
    ;; bool _is_limited_speed_active
    1
    ;; bool _in_sleep_mode
    1
    ;; bool _in_manual_mode
    1
    ;; bool _is_manual_mode_restart_required
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_connected
       (if _is_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_firmware_ok
       (if _is_firmware_ok (write-byte -1 s) (write-byte 0 s))
     ;; int32 _firmware_version
       (write-long _firmware_version s)
     ;; bool _in_protective_stop
       (if _in_protective_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_emergency_stop
       (if _in_emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _sto_feedback
       (if _sto_feedback (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_restart_required
       (if _is_restart_required (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_safety_muted
       (if _is_safety_muted (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_limited_speed_active
       (if _is_limited_speed_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_sleep_mode
       (if _in_sleep_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_manual_mode
       (if _in_manual_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_manual_mode_restart_required
       (if _is_manual_mode_restart_required (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_connected
     (setq _is_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_firmware_ok
     (setq _is_firmware_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _firmware_version
     (setq _firmware_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _in_protective_stop
     (setq _in_protective_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_emergency_stop
     (setq _in_emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sto_feedback
     (setq _sto_feedback (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_restart_required
     (setq _is_restart_required (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_safety_muted
     (setq _is_safety_muted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_limited_speed_active
     (setq _is_limited_speed_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_sleep_mode
     (setq _in_sleep_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_manual_mode
     (setq _in_manual_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_manual_mode_restart_required
     (setq _is_manual_mode_restart_required (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::SafetyStatus :md5sum-) "785ce55b5098efd15a400a9dabaf908f")
(setf (get mir_msgs::SafetyStatus :datatype-) "mir_msgs/SafetyStatus")
(setf (get mir_msgs::SafetyStatus :definition-)
      "bool is_connected

bool is_firmware_ok
int32 firmware_version

bool in_protective_stop
bool in_emergency_stop
bool sto_feedback
bool is_restart_required

bool is_safety_muted
bool is_limited_speed_active
bool in_sleep_mode

bool in_manual_mode
bool is_manual_mode_restart_required
")



(provide :mir_msgs/SafetyStatus "785ce55b5098efd15a400a9dabaf908f")


