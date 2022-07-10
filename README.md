# Shader Engine 

This is the repository for Shader Engine a game in which lies on a singular web page on the internet with no open-source code.

# Our goals
* Shader options with lua shader support!!!
* hscript support!!!
# Important notes
This is a Engine That Support Shaders!!!!

## Credits / shoutouts

- [Jonnycat](https://www.youtube.com/channel/UCCY4AxQfQdnLxzXmprp8y_w) - Programmer / porter. 
- [BushTrain](https://twitter.com/BushtrainP) - Main Programmer 
- [AngleDTF](https://github.com/AngelDTF/FNF-NewgroundsPort) - Reverse Enginering Week 7


## Build instructions

THESE INSTRUCTIONS ARE FOR COMPILING THE GAME'S SOURCE CODE!!!

IF YOU WANT TO JUST DOWNLOAD AND INSTALL AND PLAY THE GAME NORMALLY, [GO TO THE RELEASES PAGE](../../releases) AND DOWNLOAD PRECOMPILED PACKAGES FROM THERE!

IF YOU WANT TO COMPILE THE GAME YOURSELF, CONTINUE READING!!!

### Installing the Required Programs

First you need to install Haxe and HaxeFlixel. I'm too lazy to write and keep updated with that setup (which is pretty simple). 
1. [Install Haxe 4.1.5](https://haxe.org/download/version/4.1.5/) (Download 4.1.5 instead of 4.2.0 because 4.2.0 is broken and is not working with gits properly...)
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
5. Run `haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc` to install Discord RPC.
6. Run `haxelib git hxCodec https://github.com/BushTrain460615/hxCodec` to install HxCodec

At the moment, you can optionally fix some bugs regarding the engine:
1. A transition bug in songs with zoomed out cameras
- Run `haxelib git flixel-addons https://github.com/HaxeFlixel/flixel-addons` in the terminal/command-prompt.
2. A text rendering bug (mainly noticeable in the story menu under tracks)
- Run `haxelib git openfl https://github.com/openfl/openfl` in the terminal/command-prompt.

You should have everything ready for compiling the game! Follow the guide below to continue!

### Compiling game
This is for a release version to build
```
lime build mac
lime build windows
lime build linux
lime build android
lime build ios
```
This is for debug
```
lime build mac -debug
lime build windows -debug
lime build linux -debug
lime build android -debug
lime build ios -debug
```

### Windows Only Stuff
* MSVC v142 - VS 2019 C++ x64/x86 build tools
* Windows SDK (10.0.17763.0)
* C++ Profiling tools
* C++ CMake tools for windows
* C++ ATL for v142 build tools (x86 & x64)
* C++ MFC for v142 build tools (x86 & x64)
* C++/CLI support for v142 build tools (14.21)
* C++ Modules for v142 build tools (x64/x86)
* Clang Compiler for Windows
* Windows 10 SDK (10.0.17134.0)
* Windows 10 SDK (10.0.16299.0)
* MSVC v141 - VS 2017 C++ x64/x86 build tools
* MSVC v140 - VS 2015 C++ build tools (v14.00)


