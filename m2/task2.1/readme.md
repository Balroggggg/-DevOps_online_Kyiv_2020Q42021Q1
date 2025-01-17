# Module 2 Virtualization and Cloud Basic 

## PART 1. HYPERVISORS 
### 1.  What are the most popular hypervisors for infrastructure virtualization? 
- Oracle Virtualbox
- VMware
- Hyper-V
- KVM
- XEN
- RHEV
### 2.  Briefly describe the main differences of the most popular hypervisors. 

- VMware:
    > +  No operating system is necessary for controlling the management components
    > + No security patches necessary for Controlling Layer components
    > + Excellent vendor support
    > + Out-of-the-box governance feature set
    > + Available AWS apps
    
-  Oracle VM VirtualBox
    > + Manages multiple VM's simultaneously. As a software used to create environments with several machines, this is a great strength.
    > + Allows a bridged network to be built with extreme ease.
    > + Central dashboard is concise and informative, without being cluttered.
    > + Seriously easy to pick up as a first time user. Never counter-intuitive.
    > + Can be run across a range of OS - not restricted to Windows
    
-  Hyper-V:

   > + Persistent memory support.
   > + Shielded VM updates.
   > + Simple Two-Node clusters.
   > + ReFS Deduplication.
   > + Storage Spaces Direct improvements.
   > + Windows Admin Center.
   > + Encrypted subnets.

-  KVM:

    > +  Container support
    > +  Scalability
    > +  Overcommit resources
    > +  Disk I/O throttling
    > +  Hot plug of virtual resources
    > +  Low-cost virtualization solution
    > +  Red Hat Enterprise Virtualization programming & API
    > +  Live Migration & Storage Migration
    > +  Assign any PCI device to virtual machines
    > +  Red Hat Satellite integration
    > +  Disaster Recovery support
  
## PART 2. WORK WITH VIRTUALBOX 

I've had Ubuntu already installed on VMware. I created new virtual machine running on Ubuntu by cloning an existing VM on Ubuntu.
Then I set network adapters to VMnet8 on both to let VMs have a connection to each other. 

Here are the results of ping command from VM1 to VM2 and VM2 to VM1:

![alt](screenshots/Screenshot_20.jpg)

![alt](screenshots/Screenshot_21.jpg)

Also I've learnt some cli commands for VMware, such as:
- vmrun list
- vmrun start [Path to .vmx file]
- vmrun stop [Path to .vmx file]
- vmrun reset [Path to .vmx file]
- vmrun snapshot [Path to .vmx file]
- vmrun deleteSnapshot [Path to .vmx file]

## PART 3. WORK WITH VAGRANT 

1. Created new folder for the future vagrant box

![alt](screenshots/newDir.jpg)

2. Initialized  the  environment  with  the  default  Vagrant  box and ran vagrant up: 
      init hashicorp/precise64
      
![alt](screenshots/startUpVM.jpg)

![alt](screenshots/statusVM.jpg)

3. Connected to the VM via ssh (127.0.0.1:2222):

![alt](screenshots/sshVM.jpg)

4. Stoped and deleted the created VM.

![alt](screenshots/stop&deleteVM.jpg)

5. Created one more VM 

![alt](screenshots/initNewVM.jpg)

![alt](screenshots/startUpNewVM.jpg)

![alt](screenshots/sshNewVM.jpg)

![alt](screenshots/sshDateNewVM.jpg)

![alt](screenshots/stop&destroyNewVM.jpg)
