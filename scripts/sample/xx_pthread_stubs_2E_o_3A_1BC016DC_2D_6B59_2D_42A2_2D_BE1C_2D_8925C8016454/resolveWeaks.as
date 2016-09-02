package sample.xx_pthread_stubs_2E_o_3A_1BC016DC_2D_6B59_2D_42A2_2D_BE1C_2D_8925C8016454
{
   import sample.xx._pthread_cond_broadcast_exp;
   import sample.xx.F_pthread_cond_broadcast_exp;
   import sample.xx._pthread_cond_destroy_exp;
   import sample.xx.F_pthread_cond_destroy_exp;
   import sample.xx._pthread_cond_init_exp;
   import sample.xx.F_pthread_cond_init_exp;
   import sample.xx._pthread_cond_signal_exp;
   import sample.xx.F_pthread_cond_signal_exp;
   import sample.xx._pthread_cond_wait_exp;
   import sample.xx.F_pthread_cond_wait_exp;
   import sample.xx._pthread_getspecific_exp;
   import sample.xx.F_pthread_getspecific_exp;
   import sample.xx._pthread_testcancel_exp;
   import sample.xx.F_pthread_testcancel_exp;
   import sample.xx._pthread_attr_getguardsize_exp;
   import sample.xx.F_pthread_attr_getguardsize_exp;
   import sample.xx._pthread_attr_getstackaddr_exp;
   import sample.xx.F_pthread_attr_getstackaddr_exp;
   import sample.xx._pthread_attr_getstacksize_exp;
   import sample.xx.F_pthread_attr_getstacksize_exp;
   import sample.xx._pthread_attr_getinheritsched_exp;
   import sample.xx.F_pthread_attr_getinheritsched_exp;
   import sample.xx._pthread_attr_getschedparam_exp;
   import sample.xx.F_pthread_attr_getschedparam_exp;
   import sample.xx._pthread_attr_getschedpolicy_exp;
   import sample.xx.F_pthread_attr_getschedpolicy_exp;
   import sample.xx._pthread_attr_getscope_exp;
   import sample.xx.F_pthread_attr_getscope_exp;
   import sample.xx._pthread_attr_init_exp;
   import sample.xx.F_pthread_attr_init_exp;
   import sample.xx._pthread_attr_setdetachstate_exp;
   import sample.xx.F_pthread_attr_setdetachstate_exp;
   import sample.xx._pthread_attr_setguardsize_exp;
   import sample.xx.F_pthread_attr_setguardsize_exp;
   import sample.xx._pthread_attr_setstackaddr_exp;
   import sample.xx.F_pthread_attr_setstackaddr_exp;
   import sample.xx._pthread_attr_setstacksize_exp;
   import sample.xx.F_pthread_attr_setstacksize_exp;
   import sample.xx._pthread_attr_setinheritsched_exp;
   import sample.xx.F_pthread_attr_setinheritsched_exp;
   import sample.xx._pthread_attr_setschedparam_exp;
   import sample.xx.F_pthread_attr_setschedparam_exp;
   import sample.xx._pthread_attr_setschedpolicy_exp;
   import sample.xx.F_pthread_attr_setschedpolicy_exp;
   import sample.xx._pthread_attr_setscope_exp;
   import sample.xx.F_pthread_attr_setscope_exp;
   import sample.xx._pthread_cancel_exp;
   import sample.xx.F_pthread_cancel_exp;
   import sample.xx._pthread_cond_timedwait_exp;
   import sample.xx.F_pthread_cond_timedwait_exp;
   import sample.xx._pthread_detach_exp;
   import sample.xx.F_pthread_detach_exp;
   import sample.xx._pthread_equal_exp;
   import sample.xx.F_pthread_equal_exp;
   import sample.xx._pthread_exit_exp;
   import sample.xx.F_pthread_exit_exp;
   import sample.xx._pthread_join_exp;
   import sample.xx.F_pthread_join_exp;
   import sample.xx._pthread_kill_exp;
   import sample.xx.F_pthread_kill_exp;
   import sample.xx._pthread_setcancelstate_exp;
   import sample.xx.F_pthread_setcancelstate_exp;
   import sample.xx._pthread_setcanceltype_exp;
   import sample.xx.F_pthread_setcanceltype_exp;
   import sample.xx._pthread_key_create_exp;
   import sample.xx.F_pthread_key_create_exp;
   import sample.xx._pthread_key_delete_exp;
   import sample.xx.F_pthread_key_delete_exp;
   import sample.xx._pthread_main_np_exp;
   import sample.xx.F_pthread_main_np_exp;
   import sample.xx._pthread_mutex_destroy_exp;
   import sample.xx.F_pthread_mutex_destroy_exp;
   import sample.xx._pthread_mutex_init_exp;
   import sample.xx.F_pthread_mutex_init_exp;
   import sample.xx._pthread_mutex_lock_exp;
   import sample.xx.F_pthread_mutex_lock_exp;
   import sample.xx._pthread_mutex_trylock_exp;
   import sample.xx.F_pthread_mutex_trylock_exp;
   import sample.xx._pthread_mutex_unlock_exp;
   import sample.xx.F_pthread_mutex_unlock_exp;
   import sample.xx._pthread_mutexattr_destroy_exp;
   import sample.xx.F_pthread_mutexattr_destroy_exp;
   import sample.xx._pthread_mutexattr_init_exp;
   import sample.xx.F_pthread_mutexattr_init_exp;
   import sample.xx._pthread_mutexattr_settype_exp;
   import sample.xx.F_pthread_mutexattr_settype_exp;
   import sample.xx._pthread_once_exp;
   import sample.xx.F_pthread_once_exp;
   import sample.xx._pthread_rwlock_destroy_exp;
   import sample.xx.F_pthread_rwlock_destroy_exp;
   import sample.xx._pthread_rwlock_init_exp;
   import sample.xx.F_pthread_rwlock_init_exp;
   import sample.xx._pthread_rwlock_rdlock_exp;
   import sample.xx.F_pthread_rwlock_rdlock_exp;
   import sample.xx._pthread_rwlock_tryrdlock_exp;
   import sample.xx.F_pthread_rwlock_tryrdlock_exp;
   import sample.xx._pthread_rwlock_trywrlock_exp;
   import sample.xx.F_pthread_rwlock_trywrlock_exp;
   import sample.xx._pthread_rwlock_unlock_exp;
   import sample.xx.F_pthread_rwlock_unlock_exp;
   import sample.xx._pthread_rwlock_wrlock_exp;
   import sample.xx.F_pthread_rwlock_wrlock_exp;
   import sample.xx._pthread_self_exp;
   import sample.xx.F_pthread_self_exp;
   import sample.xx._pthread_setspecific_exp;
   import sample.xx.F_pthread_setspecific_exp;
   import sample.xx._pthread_sigmask_exp;
   import sample.xx.F_pthread_sigmask_exp;
   import sample.xx._pthread_atfork_exp;
   import sample.xx.F_pthread_atfork_exp;
   import sample.xx._pthread_attr_destroy_exp;
   import sample.xx.F_pthread_attr_destroy_exp;
   import sample.xx._pthread_attr_getdetachstate_exp;
   import sample.xx.F_pthread_attr_getdetachstate_exp;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "_pthread_cond_broadcast":_pthread_cond_broadcast_exp,
         "F_pthread_cond_broadcast":F_pthread_cond_broadcast_exp,
         "__pthread_cond_broadcast":_pthread_cond_broadcast_exp,
         "F__pthread_cond_broadcast":F_pthread_cond_broadcast_exp,
         "_pthread_cond_destroy":_pthread_cond_destroy_exp,
         "F_pthread_cond_destroy":F_pthread_cond_destroy_exp,
         "__pthread_cond_destroy":_pthread_cond_destroy_exp,
         "F__pthread_cond_destroy":F_pthread_cond_destroy_exp,
         "_pthread_cond_init":_pthread_cond_init_exp,
         "F_pthread_cond_init":F_pthread_cond_init_exp,
         "__pthread_cond_init":_pthread_cond_init_exp,
         "F__pthread_cond_init":F_pthread_cond_init_exp,
         "_pthread_cond_signal":_pthread_cond_signal_exp,
         "F_pthread_cond_signal":F_pthread_cond_signal_exp,
         "__pthread_cond_signal":_pthread_cond_signal_exp,
         "F__pthread_cond_signal":F_pthread_cond_signal_exp,
         "_pthread_cond_wait":_pthread_cond_wait_exp,
         "F_pthread_cond_wait":F_pthread_cond_wait_exp,
         "__pthread_cond_wait":_pthread_cond_wait_exp,
         "F__pthread_cond_wait":F_pthread_cond_wait_exp,
         "__d_u_m_m_y_getspecific":_pthread_getspecific_exp,
         "F__d_u_m_m_y_getspecific":F_pthread_getspecific_exp,
         "__pthread_testcancel":_pthread_testcancel_exp,
         "F__pthread_testcancel":F_pthread_testcancel_exp,
         "_pthread_attr_getguardsize":_pthread_attr_getguardsize_exp,
         "F_pthread_attr_getguardsize":F_pthread_attr_getguardsize_exp,
         "__pthread_attr_getguardsize":_pthread_attr_getguardsize_exp,
         "F__pthread_attr_getguardsize":F_pthread_attr_getguardsize_exp,
         "_pthread_attr_getstackaddr":_pthread_attr_getstackaddr_exp,
         "F_pthread_attr_getstackaddr":F_pthread_attr_getstackaddr_exp,
         "__pthread_attr_getstackaddr":_pthread_attr_getstackaddr_exp,
         "F__pthread_attr_getstackaddr":F_pthread_attr_getstackaddr_exp,
         "_pthread_attr_getstacksize":_pthread_attr_getstacksize_exp,
         "F_pthread_attr_getstacksize":F_pthread_attr_getstacksize_exp,
         "__pthread_attr_getstacksize":_pthread_attr_getstacksize_exp,
         "F__pthread_attr_getstacksize":F_pthread_attr_getstacksize_exp,
         "_pthread_attr_getinheritsched":_pthread_attr_getinheritsched_exp,
         "F_pthread_attr_getinheritsched":F_pthread_attr_getinheritsched_exp,
         "__pthread_attr_getinheritsched":_pthread_attr_getinheritsched_exp,
         "F__pthread_attr_getinheritsched":F_pthread_attr_getinheritsched_exp,
         "_pthread_attr_getschedparam":_pthread_attr_getschedparam_exp,
         "F_pthread_attr_getschedparam":F_pthread_attr_getschedparam_exp,
         "__pthread_attr_getschedparam":_pthread_attr_getschedparam_exp,
         "F__pthread_attr_getschedparam":F_pthread_attr_getschedparam_exp,
         "_pthread_attr_getschedpolicy":_pthread_attr_getschedpolicy_exp,
         "F_pthread_attr_getschedpolicy":F_pthread_attr_getschedpolicy_exp,
         "__pthread_attr_getschedpolicy":_pthread_attr_getschedpolicy_exp,
         "F__pthread_attr_getschedpolicy":F_pthread_attr_getschedpolicy_exp,
         "_pthread_attr_getscope":_pthread_attr_getscope_exp,
         "F_pthread_attr_getscope":F_pthread_attr_getscope_exp,
         "__pthread_attr_getscope":_pthread_attr_getscope_exp,
         "F__pthread_attr_getscope":F_pthread_attr_getscope_exp,
         "_pthread_attr_init":_pthread_attr_init_exp,
         "F_pthread_attr_init":F_pthread_attr_init_exp,
         "__pthread_attr_init":_pthread_attr_init_exp,
         "F__pthread_attr_init":F_pthread_attr_init_exp,
         "_pthread_attr_setdetachstate":_pthread_attr_setdetachstate_exp,
         "F_pthread_attr_setdetachstate":F_pthread_attr_setdetachstate_exp,
         "__pthread_attr_setdetachstate":_pthread_attr_setdetachstate_exp,
         "F__pthread_attr_setdetachstate":F_pthread_attr_setdetachstate_exp,
         "_pthread_attr_setguardsize":_pthread_attr_setguardsize_exp,
         "F_pthread_attr_setguardsize":F_pthread_attr_setguardsize_exp,
         "__pthread_attr_setguardsize":_pthread_attr_setguardsize_exp,
         "F__pthread_attr_setguardsize":F_pthread_attr_setguardsize_exp,
         "_pthread_attr_setstackaddr":_pthread_attr_setstackaddr_exp,
         "F_pthread_attr_setstackaddr":F_pthread_attr_setstackaddr_exp,
         "__pthread_attr_setstackaddr":_pthread_attr_setstackaddr_exp,
         "F__pthread_attr_setstackaddr":F_pthread_attr_setstackaddr_exp,
         "_pthread_attr_setstacksize":_pthread_attr_setstacksize_exp,
         "F_pthread_attr_setstacksize":F_pthread_attr_setstacksize_exp,
         "__pthread_attr_setstacksize":_pthread_attr_setstacksize_exp,
         "F__pthread_attr_setstacksize":F_pthread_attr_setstacksize_exp,
         "_pthread_attr_setinheritsched":_pthread_attr_setinheritsched_exp,
         "F_pthread_attr_setinheritsched":F_pthread_attr_setinheritsched_exp,
         "__pthread_attr_setinheritsched":_pthread_attr_setinheritsched_exp,
         "F__pthread_attr_setinheritsched":F_pthread_attr_setinheritsched_exp,
         "_pthread_attr_setschedparam":_pthread_attr_setschedparam_exp,
         "F_pthread_attr_setschedparam":F_pthread_attr_setschedparam_exp,
         "__pthread_attr_setschedparam":_pthread_attr_setschedparam_exp,
         "F__pthread_attr_setschedparam":F_pthread_attr_setschedparam_exp,
         "_pthread_attr_setschedpolicy":_pthread_attr_setschedpolicy_exp,
         "F_pthread_attr_setschedpolicy":F_pthread_attr_setschedpolicy_exp,
         "__pthread_attr_setschedpolicy":_pthread_attr_setschedpolicy_exp,
         "F__pthread_attr_setschedpolicy":F_pthread_attr_setschedpolicy_exp,
         "_pthread_attr_setscope":_pthread_attr_setscope_exp,
         "F_pthread_attr_setscope":F_pthread_attr_setscope_exp,
         "__pthread_attr_setscope":_pthread_attr_setscope_exp,
         "F__pthread_attr_setscope":F_pthread_attr_setscope_exp,
         "_pthread_cancel":_pthread_cancel_exp,
         "F_pthread_cancel":F_pthread_cancel_exp,
         "__pthread_cancel":_pthread_cancel_exp,
         "F__pthread_cancel":F_pthread_cancel_exp,
         "_pthread_cond_timedwait":_pthread_cond_timedwait_exp,
         "F_pthread_cond_timedwait":F_pthread_cond_timedwait_exp,
         "__pthread_cond_timedwait":_pthread_cond_timedwait_exp,
         "F__pthread_cond_timedwait":F_pthread_cond_timedwait_exp,
         "_pthread_detach":_pthread_detach_exp,
         "F_pthread_detach":F_pthread_detach_exp,
         "__pthread_detach":_pthread_detach_exp,
         "F__pthread_detach":F_pthread_detach_exp,
         "_pthread_equal":_pthread_equal_exp,
         "F_pthread_equal":F_pthread_equal_exp,
         "__pthread_equal":_pthread_equal_exp,
         "F__pthread_equal":F_pthread_equal_exp,
         "_pthread_exit":_pthread_exit_exp,
         "F_pthread_exit":F_pthread_exit_exp,
         "__pthread_exit":_pthread_exit_exp,
         "F__pthread_exit":F_pthread_exit_exp,
         "_pthread_join":_pthread_join_exp,
         "F_pthread_join":F_pthread_join_exp,
         "__pthread_join":_pthread_join_exp,
         "F__pthread_join":F_pthread_join_exp,
         "_pthread_kill":_pthread_kill_exp,
         "F_pthread_kill":F_pthread_kill_exp,
         "__pthread_kill":_pthread_kill_exp,
         "F__pthread_kill":F_pthread_kill_exp,
         "_pthread_setcancelstate":_pthread_setcancelstate_exp,
         "F_pthread_setcancelstate":F_pthread_setcancelstate_exp,
         "__pthread_setcancelstate":_pthread_setcancelstate_exp,
         "F__pthread_setcancelstate":F_pthread_setcancelstate_exp,
         "_pthread_setcanceltype":_pthread_setcanceltype_exp,
         "F_pthread_setcanceltype":F_pthread_setcanceltype_exp,
         "__pthread_setcanceltype":_pthread_setcanceltype_exp,
         "F__pthread_setcanceltype":F_pthread_setcanceltype_exp,
         "_pthread_testcancel":_pthread_testcancel_exp,
         "F_pthread_testcancel":F_pthread_testcancel_exp,
         "__pthread_getspecific":_pthread_getspecific_exp,
         "F__pthread_getspecific":F_pthread_getspecific_exp,
         "__d_u_m_m_y_key_create":_pthread_key_create_exp,
         "F__d_u_m_m_y_key_create":F_pthread_key_create_exp,
         "__pthread_key_create":_pthread_key_create_exp,
         "F__pthread_key_create":F_pthread_key_create_exp,
         "__d_u_m_m_y_key_delete":_pthread_key_delete_exp,
         "F__d_u_m_m_y_key_delete":F_pthread_key_delete_exp,
         "__pthread_key_delete":_pthread_key_delete_exp,
         "F__pthread_key_delete":F_pthread_key_delete_exp,
         "_pthread_main_np":_pthread_main_np_exp,
         "F_pthread_main_np":F_pthread_main_np_exp,
         "__pthread_main_np":_pthread_main_np_exp,
         "F__pthread_main_np":F_pthread_main_np_exp,
         "_pthread_mutex_destroy":_pthread_mutex_destroy_exp,
         "F_pthread_mutex_destroy":F_pthread_mutex_destroy_exp,
         "__pthread_mutex_destroy":_pthread_mutex_destroy_exp,
         "F__pthread_mutex_destroy":F_pthread_mutex_destroy_exp,
         "_pthread_mutex_init":_pthread_mutex_init_exp,
         "F_pthread_mutex_init":F_pthread_mutex_init_exp,
         "__pthread_mutex_init":_pthread_mutex_init_exp,
         "F__pthread_mutex_init":F_pthread_mutex_init_exp,
         "_pthread_mutex_lock":_pthread_mutex_lock_exp,
         "F_pthread_mutex_lock":F_pthread_mutex_lock_exp,
         "__pthread_mutex_lock":_pthread_mutex_lock_exp,
         "F__pthread_mutex_lock":F_pthread_mutex_lock_exp,
         "_pthread_mutex_trylock":_pthread_mutex_trylock_exp,
         "F_pthread_mutex_trylock":F_pthread_mutex_trylock_exp,
         "__pthread_mutex_trylock":_pthread_mutex_trylock_exp,
         "F__pthread_mutex_trylock":F_pthread_mutex_trylock_exp,
         "_pthread_mutex_unlock":_pthread_mutex_unlock_exp,
         "F_pthread_mutex_unlock":F_pthread_mutex_unlock_exp,
         "__pthread_mutex_unlock":_pthread_mutex_unlock_exp,
         "F__pthread_mutex_unlock":F_pthread_mutex_unlock_exp,
         "_pthread_mutexattr_destroy":_pthread_mutexattr_destroy_exp,
         "F_pthread_mutexattr_destroy":F_pthread_mutexattr_destroy_exp,
         "__pthread_mutexattr_destroy":_pthread_mutexattr_destroy_exp,
         "F__pthread_mutexattr_destroy":F_pthread_mutexattr_destroy_exp,
         "_pthread_mutexattr_init":_pthread_mutexattr_init_exp,
         "F_pthread_mutexattr_init":F_pthread_mutexattr_init_exp,
         "__pthread_mutexattr_init":_pthread_mutexattr_init_exp,
         "F__pthread_mutexattr_init":F_pthread_mutexattr_init_exp,
         "_pthread_mutexattr_settype":_pthread_mutexattr_settype_exp,
         "F_pthread_mutexattr_settype":F_pthread_mutexattr_settype_exp,
         "__pthread_mutexattr_settype":_pthread_mutexattr_settype_exp,
         "F__pthread_mutexattr_settype":F_pthread_mutexattr_settype_exp,
         "__d_u_m_m_y_once":_pthread_once_exp,
         "F__d_u_m_m_y_once":F_pthread_once_exp,
         "__pthread_once":_pthread_once_exp,
         "F__pthread_once":F_pthread_once_exp,
         "_pthread_rwlock_destroy":_pthread_rwlock_destroy_exp,
         "F_pthread_rwlock_destroy":F_pthread_rwlock_destroy_exp,
         "__pthread_rwlock_destroy":_pthread_rwlock_destroy_exp,
         "F__pthread_rwlock_destroy":F_pthread_rwlock_destroy_exp,
         "_pthread_rwlock_init":_pthread_rwlock_init_exp,
         "F_pthread_rwlock_init":F_pthread_rwlock_init_exp,
         "__pthread_rwlock_init":_pthread_rwlock_init_exp,
         "F__pthread_rwlock_init":F_pthread_rwlock_init_exp,
         "_pthread_rwlock_rdlock":_pthread_rwlock_rdlock_exp,
         "F_pthread_rwlock_rdlock":F_pthread_rwlock_rdlock_exp,
         "__pthread_rwlock_rdlock":_pthread_rwlock_rdlock_exp,
         "F__pthread_rwlock_rdlock":F_pthread_rwlock_rdlock_exp,
         "_pthread_rwlock_tryrdlock":_pthread_rwlock_tryrdlock_exp,
         "F_pthread_rwlock_tryrdlock":F_pthread_rwlock_tryrdlock_exp,
         "__pthread_rwlock_tryrdlock":_pthread_rwlock_tryrdlock_exp,
         "F__pthread_rwlock_tryrdlock":F_pthread_rwlock_tryrdlock_exp,
         "_pthread_rwlock_trywrlock":_pthread_rwlock_trywrlock_exp,
         "F_pthread_rwlock_trywrlock":F_pthread_rwlock_trywrlock_exp,
         "__pthread_rwlock_trywrlock":_pthread_rwlock_trywrlock_exp,
         "F__pthread_rwlock_trywrlock":F_pthread_rwlock_trywrlock_exp,
         "_pthread_rwlock_unlock":_pthread_rwlock_unlock_exp,
         "F_pthread_rwlock_unlock":F_pthread_rwlock_unlock_exp,
         "__pthread_rwlock_unlock":_pthread_rwlock_unlock_exp,
         "F__pthread_rwlock_unlock":F_pthread_rwlock_unlock_exp,
         "_pthread_rwlock_wrlock":_pthread_rwlock_wrlock_exp,
         "F_pthread_rwlock_wrlock":F_pthread_rwlock_wrlock_exp,
         "__pthread_rwlock_wrlock":_pthread_rwlock_wrlock_exp,
         "F__pthread_rwlock_wrlock":F_pthread_rwlock_wrlock_exp,
         "_pthread_self":_pthread_self_exp,
         "F_pthread_self":F_pthread_self_exp,
         "__pthread_self":_pthread_self_exp,
         "F__pthread_self":F_pthread_self_exp,
         "__d_u_m_m_y_setspecific":_pthread_setspecific_exp,
         "F__d_u_m_m_y_setspecific":F_pthread_setspecific_exp,
         "__pthread_setspecific":_pthread_setspecific_exp,
         "F__pthread_setspecific":F_pthread_setspecific_exp,
         "_pthread_sigmask":_pthread_sigmask_exp,
         "F_pthread_sigmask":F_pthread_sigmask_exp,
         "__pthread_sigmask":_pthread_sigmask_exp,
         "F__pthread_sigmask":F_pthread_sigmask_exp,
         "_pthread_atfork":_pthread_atfork_exp,
         "F_pthread_atfork":F_pthread_atfork_exp,
         "__pthread_atfork":_pthread_atfork_exp,
         "F__pthread_atfork":F_pthread_atfork_exp,
         "_pthread_attr_destroy":_pthread_attr_destroy_exp,
         "F_pthread_attr_destroy":F_pthread_attr_destroy_exp,
         "__pthread_attr_destroy":_pthread_attr_destroy_exp,
         "F__pthread_attr_destroy":F_pthread_attr_destroy_exp,
         "_pthread_attr_getdetachstate":_pthread_attr_getdetachstate_exp,
         "F_pthread_attr_getdetachstate":F_pthread_attr_getdetachstate_exp,
         "__pthread_attr_getdetachstate":_pthread_attr_getdetachstate_exp,
         "F__pthread_attr_getdetachstate":F_pthread_attr_getdetachstate_exp
      };
      var _loc4_:int = 0;
      var _loc3_:* = _loc2_;
      while(§§hasnext(_loc2_,_loc4_))
      {
         if(!(§§nextvalue(_loc4_,_loc3_)))
         {
            return false;
         }
      }
      modWeaks = _loc2_;
      return true;
   }
}
