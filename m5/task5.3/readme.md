# Module 5 Linux

## TASK 5.3

1. Linux process states:

<img src="screenshots/Screenshot_1.jpg" height="420px" width="600px" >
 
Running

    The process is either running (it is the current process in the system) or it is ready to run 
    (it is waiting to be assigned to one of the system's CPUs). 
Waiting

    The process is waiting for an event or for a resource. Linux differentiates between two types of waiting process;
    interruptible and uninterruptible. Interruptible waiting processes can be interrupted by signals whereas uninterruptible
    waiting processes are waiting directly on hardware conditions and cannot be interrupted under any circumstances. 
Stopped

    The process has been stopped, usually by receiving a signal. A process that is being debugged can be in a stopped state. 
Zombie

    This is a halted process which, for some reason, still has a task_struct data structure in the task vector.
    It is what it sounds like, a dead process. 

       
2. `pstree` - display a tree of processes

<img src="screenshots/Screenshot_2.jpg" height="420px" width="600px" >

3. `/proc` is very special in that it is also a virtual filesystem. It doesn't contain 'real' files but runtime system information (e.g. system memory, devices mounted, hardware configuration, etc). For this reason it can be named as a control and information centre for the kernel. By the way, quite a lot of system utilities are simply calls to files in this directory. For example, 'lsmod' is the same as 'cat /proc/modules' while 'lspci' is a synonym for 'cat /proc/pci'. By altering files located in this directory you can even read/change kernel parameters (sysctl) while the system is running.

4.  `/proc/cpuinfo` - contains info about cpu

<img src="screenshots/Screenshot_3.jpg" height="600px" width="600px" >

5. `ps -eo euser,ruser,suser,fuser,f,stat,start,time,comm,label`

<img src="screenshots/Screenshot_4.jpg" height="600px" width="800px" >

6. User processes have its own virtual address space.

Kernel processes don't have their own address space, they operate within kernel address space only. And they may be started before the kernel has started any user process. Also, they have PID less than 1000.

7.  As ps documentation says there can be the next states of processes:

         D    uninterruptible sleep (usually IO)
         R    running or runnable (on run queue)
         S    interruptible sleep (waiting for an event to complete)
         T    stopped by job control signal
         t    stopped by debugger during the tracing
         W    paging (not valid since the 2.6.xx kernel)
         X    dead (should never be seen)
         Z    defunct ("zombie") process, terminated but not reaped by ts parent
  <img src="screenshots/Screenshot_5.jpg" height="600px" width="1000px" >
  
 8.  `ps aux | grep username`
 
 <img src="screenshots/Screenshot_6.jpg" height="600px" width="1000px" >
 
 9. 
 
  <img src="screenshots/Screenshot_7.jpg" height="800px" width="800px" >
  
  10.
  
  
  
  
