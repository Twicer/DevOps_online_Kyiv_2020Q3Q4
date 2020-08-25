## Task 5.7

**OPENSSH on win10:**

![kg](./screens/kg.png)

`ssh-keygen` - creating new authentication key pairs for SSH.


![sshconnect](./screens/sshconnect.png)

`ssh` - connect to the remote server.


![copyid](./screens/copyid.png)

`ssh-copy-id` - installs an SSH key on a server as an authorized key.
As seen on the screenshot above this command is not implemented in win10, so we need to use some workarounds :


![copyidmanual](./screens/copyidmanual.png)


**Basic SSH settings for increased security:**

![addsec](./screens/addsec.png)


![addsec2](./screens/addsec2.png)

Changing default port, disable root login, disadle login with password.


**More secure SSH key:**

![secured](./screens/secured.png)

Using the Edwards Twisted Curve algorithm instead of rsa. Using 4096 bit key. We run 250 encryption rounds on the private key.


**Port forwarding:**

![pff](./screens/pff.png)


![pff1](./screens/pff1.png)