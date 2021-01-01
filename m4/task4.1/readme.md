# Module 4 Networking Fundamentals

### TASK 4.1 

1. Built this topology

<img src="screenshots/Screenshot_40.jpg" height="340px" width="500px" >

2. Tested topology by sending ICMP packets from PC0 to PC3: 

<img src="screenshots/Screenshot_36.jpg" height="340px" width="500px" >

3. Looked to the PDU information: 

<img src="screenshots/Screenshot_39.jpg" height="340px" width="500px" >

4. Deleted IP-addresses and obviously topoligy stopped working because it is unknown source and destination addresses

5. Expanded topology by adding one more hub, server and 2 PCs

<img src="screenshots/Screenshot_42.jpg" height="340px" width="500px" >

6. Tested topology by sending ICMP packets from PC1 to Server0

<img src="screenshots/Screenshot_41.jpg" height="100px" width="500px" >

7. Built the same to the first topology but using switch in stead of hub

<img src="screenshots/Screenshot_43.jpg" height="340px" width="500px" >

8. Tested topology and looked to the PDU information: 

<img src="screenshots/Screenshot_44.jpg" height="340px" width="500px" >

<img src="screenshots/Screenshot_45.jpg" height="340px" width="500px" >

9. Expanded topology by adding one more switch, server and 2 PCs. Tested it

<img src="screenshots/Screenshot_47.jpg" height="340px" width="500px" >

<img src="screenshots/Screenshot_46.jpg" height="340px" width="500px" >

10. To Sum up, the main difference between 2 topologies is the work principes of hub and switch. Hub repeats all packeges it receives. Switch is smarter device and it understands (with the help of ARP-tables, which contain all the MAC and IP-addresses , and STP, that is checking every 2 seconds topology changes with BPDU packets) where it should retranslate the package.

11. Changed Topology: 

<img src="screenshots/Screenshot_48.jpg" height="340px" width="500px" >

12. Tested it

<img src="screenshots/Screenshot_49.jpg" height="100px" width="700px" >

13. Added router in topology

<img src="screenshots/Screenshot_50.jpg" height="340px" width="500px" >

14. Tested the topology by sending  ICMP packets from PC2 to PC7

<img src="screenshots/Screenshot_52.jpg" height="100px" width="700px" >

<img src="screenshots/Screenshot_51.jpg" height="340px" width="500px" >

<img src="screenshots/Screenshot_53.jpg" height="340px" width="500px" >

15. Comparing this topology with the previous, it is obvious that the last one gives more opportunities -  network can be separated, so that more IP-addresses are available. As a result much bigger and complicated networks can be built.
