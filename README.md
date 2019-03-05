# bash-talk
Bash Talk for HackIowa Spring 2019     
  
![bash-logo](https://github.com/abpwrs/bash-talk/blob/master/imgs/bash-logo.png)
   
      
## What is Bash
BASH, the Bourne Again SHell, is an Unix Shell and command language that reads from the standard input or from a file. Bash allows you to interact with your filesystem and run scripts through your command line / terminal. This tutorial will focus on learning the basics of Bash as a language, as well as it's application in doing batch processing. 

## Setup instructions:  

Dowload the talk contents:  
If you don't have git installed look [here](https://github.com/abpwrs/git-talk/blob/master/README.md)
```bash  
$ git checkout https://github.com/abpwrs/bash-talk.git  
```     
You will also need a terminal/command line and your favorite text editor.  

#### Bash (Required)   
For windows users I would reccomend [git-bash](https://git-scm.com/downloads)   
For Mac and most Linux the built in terminals ship with bash  
```bash
# check that bash is installed
$ which bash
# this should print a line with the path to your bash executable
```   

#### Python (Optional) 
You will need python3 and pip:   
https://www.python.org/downloads/    
https://pip.pypa.io/en/stable/installing/       
```bash    
$ cd bash-talk/  
# install the python requirements
$ pip install -r requirements.txt  
```  
  
#### C++ (Optional)    
you will need a c++ compiler(I'd use g++)        
[instructions](https://www.cs.odu.edu/~zeil/cs250PreTest/latest/Public/installingACompiler/)    
```bash     
# The following compiliers should be found, the same as bash above    
$ which g++    
```     

## More:    
More about shells --> [read more here](http://www.ibm.com/developerworks/linux/library/l-linux-shells/index.html)      
More about scripting --> [read more here](http://www.tldp.org/LDP/abs/html/index.html)     




