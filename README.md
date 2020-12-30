# NTFScript-3G

Simple AppleScript for mounting NTFS storages on macOS

## Instroduction

System security has been enhanced since macOS Big Sur, so you cannot automatically assign read access to NTFS storage with just one input to the terminal as before. Now, in order to mount the NTFS storage using FUSE and NTFS-3G on macOS, you have to enter commands into the terminal manually on all such occasions.

This simple script is not that huge thing. It just automatically enters the commands that need to be entered into the terminal. Still, this could make it a bit convenient for you to mount the NTFS storage.

## Installation

1. First, install Command Line Tools. You can download it from the link below.
https://developer.apple.com/download/more/

2. Open Terminal, enter the following commands.
(These are [macFuse](https://osxfuse.github.io) and [NTFS-3G](https://github.com/osxfuse/osxfuse/wiki/NTFS-3G).)

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```bash
brew install --cask osxfuse
```

```bash
brew install ntfs-3g
```

3. Now, run [NTFScript-3G](https://github.com/lese9855/NTFScript-3G/releases/latest). `diskutil list` will appear in the terminal.

4. Find the Identifier of the NTFS Storage and enter it on Pop-up dialogue.

![alt text](https://raw.githubusercontent.com/lese9855/NTFScript-3G/main/Pictures/Screenshot_01.png)

5. Enter the password of your mac for using sudo command

![alt text](https://raw.githubusercontent.com/lese9855/NTFScript-3G/main/Pictures/Screenshot_02.png)

6. At the end of the process, an alert will appear.

**Note :** After confirming that the NTFS storage has been remounted, click OK.

![alt text](https://raw.githubusercontent.com/lese9855/NTFScript-3G/main/Pictures/Screenshot_03.png)

7. That's all! Now you can write to NTFS drives!

If you want to remove the storage, simply click the eject button on Finder.

## Usage

You can turn this script into an application through ScriptEditor. When used as an application, it is possible to mount NTFS storage more easily.

However, for the sake of opening the script to the public, I will not upload the separate application.

## Credits

[macFuse](https://osxfuse.github.io)

[NTFS-3G](https://github.com/osxfuse/osxfuse/wiki/NTFS-3G)
