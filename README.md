# EnvInstallScript
A bash script for installing the necessary software for our development project.

The software being install is:
1) Python2.7 and 3.6 and pip for both
2) Atom text editor
3) Google chrome
4) Java8 sdk, jre, and jdk
5) npm and nodejs
6) RVM, ruby, and rails
7) MySQL server and workbench
8) Git

To run this script you will need to create an empty file and copy and paste the scipt text into it.  Next you need to create a directory in you "home" folder called bin.  So the path should be /home/<username>/bin (your username can be viewed in your home folder path).  

Save the file and call it installscript.sh (this is a shell script that we will run via the terminal).

Once you have done that you can open a terminal in this location (/home/osboxes/bin) and execute the command:

./filename

where filename is the name of the file you just saved i.e. installscript.sh.  You may get a permissions error meaning that you do not have permission to execute that file.  If this happens just run the command:

sudo chmod +x filename

where the filename is the name of the file.  This will allow you to execute the file.  You are going to be prompted by some of the installations.  For the MySQL installation you are going to be asked to create a root password.  Make it simple and write it down because that is how you will access MySQL. 




