# Shader Engine 

This is the repository for Shader Engine a game in which lies on a singular web page on the internet with no open-source code.

This project is the result of reverse engineering the transpiled JavaScript code into readable Haxe code, which can now be built upon with ease.

# Our goals
* Shader options with lua shader support!!!
* hscript support!!!
* MP4 support (android, mac, windows, linux)
# Important notes
This is a Engine That Support Shaders!!!!

## Credits / shoutouts

- [Jonnycat](https://www.youtube.com/channel/UCCY4AxQfQdnLxzXmprp8y_w) - Programmer / porter. 
- [BushTrain](https://twitter.com/BushtrainP) - Main Programmer 
- [AngleDTF](https://github.com/AngelDTF/FNF-NewgroundsPort) - Reverse Enginering Week 7
- [nebulazorua](https://github.com/nebulazorua) For Da Shaders!!!

## Build instructions

THESE INSTRUCTIONS ARE FOR COMPILING THE GAME'S SOURCE CODE!!!

IF YOU WANT TO JUST DOWNLOAD AND INSTALL AND PLAY THE GAME NORMALLY, [GO TO THE RELEASES PAGE](../../releases) AND DOWNLOAD PRECOMPILED PACKAGES FROM THERE!

IF YOU WANT TO COMPILE THE GAME YOURSELF, CONTINUE READING!!!

### Installing the Required Programs

First you need to install Haxe and HaxeFlixel. I'm too lazy to write and keep updated with that setup (which is pretty simple). 
1. [Install Haxe 4.2.5](https://haxe.org/download/version/4.2.5/) (Download 4.2.5 because it works with git...)
2. [Install HaxeFlixel](https://haxeflixel.com/documentation/install-haxeflixel/) after downloading Haxe

Other installations you'd need is the additional libraries, a fully updated list will be in `Project.xml` in the project root. Currently, these are all of the things you need to install:
```
flixel
flixel-addons
flixel-ui
hscript
```
So for each of those type `haxelib install [library]` so shit like `haxelib install flixel`

You'll also need to install a couple things that involve Gits. To do this, you need to do a few things first.
1. Download [git-scm](https://git-scm.com/downloads). Works for Windows, Mac, and Linux, just select your build.
2. Follow instructions to install the application properly.
3. Run `haxelib git polymod https://github.com/larsiusprime/polymod.git` to install Polymod.
4. Run `haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc` to install Discord RPC.
5. Run `haxelib git hxCodec https://github.com/BushTrain460615/hxCodec` to install HxCodec

At the moment, you can optionally fix some bugs regarding the engine:
1. A transition bug in songs with zoomed out cameras
- Run `haxelib git flixel-addons https://github.com/HaxeFlixel/flixel-addons` in the terminal/command-prompt.
2. A text rendering bug (mainly noticeable in the story menu under tracks)
- Run `haxelib git openfl https://github.com/openfl/openfl` in the terminal/command-prompt.

You should have everything ready for compiling the game! Follow the guide below to continue!

### Building Commands
release
```
lime build mac
lime build windows
lime build linux
lime build android
lime build ios
```
debug
```
lime build mac -debug
lime build windows -debug
lime build linux -debug
lime build android -debug
lime build ios -debug
```

### Windows Compiling

You need to install Visual Studio Community 2019. While installing VSC, don't click on any of the options to install workloads. Instead, go to the individual components tab and choose the following:
* MSVC v142 - VS 2019 C++ x64/x86 build tools
* Windows SDK (10.0.17763.0)

This will install about 4GB of crap, but once that is done you can open up a command line in the project's directory and run `lime test windows -debug`. Once that command finishes (it takes forever, even on a higher end PC), you can run FNF from the .exe file under export\release\windows\bin
 
### Mac Compiling
You will need Xcode to compile the game.Make sure The Xcode is the most up to date Version.You can download Xcode from the app store or from the web. 
here is the link for the [web version](https://developer.apple.com/download/all/?q=Xcode). once you have installed xcode open the app and they will ask you to install somethings click install.It might ask you to put in your password so put your password as your login mac password.After your done installing everything install [Haxe](https://haxe.org/download/version/4.2.5/).Once you have install haxe make sure to do haxelib setup on the terminal.By doing that click enter agian. install the [flixel junk] (https://haxeflixel.com) then install [git] (https://sourceforge.net/projects/git-osx-installer/files/git-2.33.0-intel-universal-mavericks.dmg/download?use_mirror=autoselect). Install the rest of the git libraries 
* haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit.git 
* haxelib git hxvm-luajit https://github.com/nebulazorua/hxvm-luajit 
* haxelib git faxe https://github.com/uhrobots/faxe 
* haxelib git polymod https://github.com/MasterEric/polymod.git 
* haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc 
* haxelib git extension-webm https://github.com/KadeDev/extension-webm 
* haxelib git hxCodec https://github.com/BushTrain460615/hxCodec
* lime rebuild extension-webm macos 

### Html5 Compiling  
Just do lime test html5  

### Additional guides

- [Command line basics](https://ninjamuffin99.newgrounds.com/news/post/1090480)
