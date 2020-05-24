# Trash-Suite for Linux

## Introduction
Almost every programmer at some point, in time has messed up while using the rm or rm-rf command. And the worst part about that command is that it is unforgiving. Everyone tends to make mistakes.
What we need is some sort of system that is forgiving about these mistakes and give us a chance to rectify this mistake. So I have brought you this trash command suite. The idea behind this suite
is to make a trashcan folder which works almost exactly similar to the trash folders on Mac and Windows. Whenever you want to remove any file/folder, you could just use the trash-add command, and 
that handles it, by removing the file/folder and putting it in the trashcan. By doing this, you can make sure that if you remove something, it is not completely lost, instead it gets added to your
trashcan. So you can restore the incorrectly trashed files/folders. This not only gives you the chance of coming back from a mistake, but also provides other wide range of functionalities to 
properly utilize your trash can to the fullest.

## Additional functionalies:
Along with adding to trash, you can restore it using the trash-restore command. Similarly you can also empty the trash can by using the trash-empty function. IF you want to completely remove any 
specifc file or folder, all you need to do is use the trash-remove command. No command-suite could ever be complete without a command that visualizes everything in a neatly formatted way. For this,
I have provided a trash-show command, which helps you visualize the contents of your trash can in a neat, organized manner.

## Documentation:

### trash-add arg_1
arg_1 : The path/name of the directory/file you want to put in your trash

This is the command that adds to your trash can. If you do not already have a trash can in root directory of your linux system, it makes a new directory called trashcan in your root directory. After
doing this, it adds the arg_1 argument which should be the path of the directory/file that you want to put in your trashcan

### trash-remove arg_1
arg_1 : The path/name of the directory/file you want to completely remove from your trash and system.

This is the command that removes a given file/directory from your trash can. It checks if the given file name actually exists in the trash can and removes it from the trash can and your system 
permanently. After this command is executed, you get a last chance to confirm the removal, if you select to remove it, you will lose the file permanently.

### trash-restore arg_1 arg_2
arg_1 : This is the path/name of the directory/fle that you want to restore/put back from the trash.
arg_2 : This is the path of the directory that you want the restored file/directory moved to.

This is the command that restores the given file/directory from your trash can. It checks if the given file name actually exists in the trash can and restores it to whatever directory the path from
the second argument specifies.

### trash-empty
This is the command that completely removes all the files in the trash can. This command removes all the contents from your trash-can. This command does ask for a final confirmation before removing 
all the contents of the trashcan. Once confirmed, it will remove all the contents permanently from the trash can and the system.

### trash-show
This is the command that prints all the contents of your trash can in a neat formatted way. This command is used to visualize the contents of the trash can.

## Instructions to successfully set up these commands on your linux machine:
So finally, how to add this to your machines and get started with it.

### Step 1 : Download/Clone this repository
Download or clone this repository in the home folder of your linux machine.

### Step 2 : Open your .bashrc folder
- Locate your .bashrc folder, which is most likely in your home folder. Once you successfully locate it, open your bashrc folder by using the command:
	- ` sudo nano .bashrc ` 

### Step 3 : Modify the enviorment variable $PATH, to make sure the setting exists everytime you login
- Go all the way down to the very end of the .bashrc file and add this line:
	- ` PATH=$PATH:~/Trash-Suite-Linux/trash-utility-scripts `

### Step 4: Add alias for each command
- After modifying the $PATH variable as mentioned in step 3, add the following lines of code to make aliases of each of the execultables to be able to run them with actual commands:
	- ` alias trash-add="trash-add.sh" `
	- ` alias trash-remove="trash-remove.sh" `
	- ` alias trash-restore="trash-restore.sh" `
	- ` alias trash-empty="trash-empty.sh" `
	- ` alias trash-show="trash-show.sh" `

### Step 4: Close your .bashrc and start utilizing the commands!
That's it. Your're commands are now set up. You can start using them right away.


## Final Notes
This was my time working with shell scripts and I thought this could prove to be extremely useful in the linux and unix world. I plan to add more layers of error-handling and better prompts to
improve this trash command suite.

I hope this is helpful to everyone!!..

