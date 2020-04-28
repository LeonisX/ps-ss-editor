Emu-France.com present: Kega Fusion Plugin
----------------------

Copy all files to /plugins directory and enjoy !


Mirror/Source:
-------------
	xBR:	http://board.byuu.org/viewtopic.php?f=10&t=2248
		http://www.eidolons-inn.net/tiki-view_forum_thread.php?comments_parentId=8323&topics_offset=1&topics_sort_mode=lastPost_desc&forumId=10
		http://www.ps3crunch.net/forum/threads/2109-The-Shader-Thread
	Others:
	http://www.eidolons-inn.net/tiki-view_forum_thread.php?comments_parentId=3569&topics_threshold=0&topics_offset=125&topics_sort_mode=lastPost_desc&topics_find=&forumId=10
	http://sbougribate.free.fr/Files/Emulation
	http://forums.ngemu.com/vba-m/96805-filter-plugins.html#post1233404
	http://www.emutalk.net/showthread.php?p=392982

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

Original Readme

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

Here are two sample Render Plugins for Kega Fusion.

These sample plugins implement the following:

1. 2xSaI Advanced Scale and Interpolation engine
   (C) Derek Liauw Kie Fa aka Kreed (http://elektron.its.tudelft.nl/~dalikifa/)

2. hq2x Magnification Filter
   (C) Maxim Stepin (http://www.hiend3d.com/hq2x.html)

Copy the two .rpi files into the same folder as Fusion.exe to use.

Note that the hq2x plugin as supplied may not work because it does not support
555 format video. If somebody wants to make it work with 555 format video
(preferably a single plugin that uses the required mode) then please do so.

Also note that the use of these plugins may produce a fairly large performance
hit currently.

The use of plugins means:

1. Every line of code in the main EXE is still my own. Its been this way from
   day one, would be a shame to change that now. Its kind of important to me.

2. Other people can develop plugins and support the emulator if they wish.

3. Other people can implement my plugin system and get instant support for any
   plugins that may exist.

4. The GPL is satisfied because full source code for the plugins is provided.
   The hq2x code is GPL - 2xSaI is too, although Kreed seems happy to provide
   "another license for your (free) project" - however I have not been able to
   contact him so far to arrange for this...

Writing Plugins:

Plugins are basically DLLs renamed to RPIs.

It is a very simple system - there are two functions you need to implement:

RenderPluginGetInfo - supplies info about the plugin to the emulator.
RenderPluginOutput  - the main render code.

RenderPluginGetInfo returns a pointer to an internal structure to the emulator.
This structure should be global scope. The code should fill in the Plugin Name
and Flags before returning to the emulator. Flags are defined as follows:

RPI_VERSION - version number. Currently 0x01.
RPI_MMX_USED - there is MMX code in the plugin.
RPI_MMX_REQD - there is ONLY MMX code in the plugin.
RPI_555_SUPP - 555 format is supported
RPI_565_SUPP - 565 format is supported
RPI_888_SUPP - 888 format is supported (but currently not used)

If you have an MMX and a non MMX version you should set RPI_MMX_USED.
if you have an MMX version only you should set RPI_MMX_REQD AND RPI_MMX_USED.
if you have a non MMX version only you should set neither.

The emulator will search for plugins and call them, and reject the ones it
cannot use (i.e. if the machine does not support MMX or any of the formats
supported).

When the emulator calls RenderPluginOutput it does so with a pointer to a
structure. This structure includes the following info:

Size     - size of the structure.
Flags    - same flags as used in RenderPluginGetInfo
SrcPtr   - pointer to source image
SrcPitch - pitch of source image
SrcW     - width of source image
SrcH     - height of source image
DstPtr   - pointer to destination image
DstPitch - pitch of destination image
DstW     - MAX width of destination image
DstH     - MAX height of destination image

The Flags will specify:
   if MMX is supported (RPI_MMX_USED) - so a plugin that supports both MMX and
   non MMX can chose to use the MMX version.

   the video format requested (currently will be 565 if supported, otherwise 555)

You should always pay attention to the pitch values. If the code you are trying
to implement only works with a source pitch identical to the source width * 2
then you should check if this is true within the plugin, and just return from
the function doing nothing.

You should also pay attention to DstW and DstH - if the image you are trying to
produce is bigger than these, then you must either clip it, or return doing
nothing.

On return you should set the final two members - OutW and OutH - to the size
of the image you actually produced. This has no effect currently but will at a
later date.

Thats pretty much all there is to it - it should be fairly obvious from the
source code. You will need the NASM assembler, and you will need to edit the
settings in the MSVC6 project (the ASM files) where NASM is located, in order to
compile the examples.
 
Snake 2004.
