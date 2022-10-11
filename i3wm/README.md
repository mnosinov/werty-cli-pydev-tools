# i3 windows manager

i3 windows manager (i3wm) installation:  
```sh
sudo apt install i3
```

## i3-ressurect
i3-resurrect - saving/restoring workspaces:

- dependencies:  
	```sh
	sudo apt install xdotool
	```

- installation:  
	```sh
	pip3 install --user --upgrade i3-resurrect
	```


## rofi
rofi - replacement for dmenu - application launcher
```sh
sudo apt install rofi
```


## Language indicator
i3wm current keyboard language layout indicator
```sh
sudo apt install gxkb
```
To avoid reseting keyboard layouts confirm that content of `/etc/default/keyboard` is like 
```
XKBMODEL="pc105"
XKBLAYOUT="us,ru"
XKBVARIANT=""
XKBOPTIONS="grp:alt_shift_toggle"

BACKSPACE="guess"

```


## Basic i3wm shortcuts

`$mod` - Either `Windows` key or `Alt` (the most popular binding is Windows key)

### Miscellanious shortcuts:
- `Alt + Shift` - switching between keyboard input layouts
- `$mod + Enter` - opening konsole terminal
- `$mod + f` - fullscreen mode toggle
- `$mod + Shift + q` - kill the current window
- `$mod + Ctrl + l` - lock the screen
- `$mod + Shift + e` - exit the i3wm
- `$mod + Shift + a` - focus the parent container
- `$mod + Shift + r` - restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
- `$mod + Shift + c` - reload the configuration file


### Windows Mode - horizontal, vertical, stacked, tabbed:
- `$mod + w`   - change mode to tabbed
- `$mod + s`   - change mode to stacked
- `$mod + g`   - change mode to horizontal
- `$mod + v`   - change mode to vertical
- `$mod + e`   - change mode back to tiling mode, toggle split between vertical and horizontal

### Moving window focus:
- `$mod + h`   - move window focus left
- `$mod + j`    - move window focus down
- `$mod + k`   - move window focus up
- `$mod + l`    - move window focus right
- Remark: you can use cursor keys (`Left`, `Down`, `Up`, `Right`) instead of vim shorcuts(`h`, `j`, `k`, `l`)

### Moving window:
- ` $mod + Shift + h`   - move current window to the left
- ` $mod + Shift + j`    - move current window to the down
- ` $mod + Shift + k`   - move current window to the up
- ` $mod + Shift + l`    - move current window to the right
- Remarks:
	* if the next position differs in windows mode, the window that is being moving will be merged into new windows mode.
	* you can use cursor keys (`Left`, `Down`, `Up`, `Right`) instead of vim shorcuts(`h`, `j`, `k`, `l`)

### Switching between workspaces:
- `$mod + 1` - switch to workspace 1
- `$mod + 2` - switch to workspace 2
...
- `$mod + 0` - switch to workspace 0

### Moving the current window between workspaces:
- `$mod + Shift + 1` - move the current window to workspace 1
- `$mod + Shift + 2` - move the current window to workspace 2
...
- `$mod + Shift + 0` - move the current window to workspace 0

### Application and command launchers:
- `$mod + d` - rofi launcher
- `$mod + Shift + d` - rofi launcher in combi mode
- `$mod + Shift + Ctrl + d` - i3-dmenu-desktop launcher

### Scratchpad
- `$mod + Shift + Minus` - move the current windows to Scratchpad
- `Alt + Tab` - switch to/from Scratchpad . If there are multiple windows in the Scratchpad, they switch cyclically among the windows.
- `$mod + Shift + Space` - remove the current Scratchpad window from Scratchpad back to normal windows. This combination is also used to toggle floating mode

### Floating windows
- `$mod + Shift + Space` - toggle the current window between a normal window mode and a floating mode.
- `$mod + Space` - switching between a normal windows and a floating windows.
- `$mod + Mouse move` - dragging and dropping the floating window

### Screenshots
- `PrtScr` - save fullscreen screenshot to  ~/Pictures/screenshots/fullscreen/ folder
- `Shift + PrtScr` - save screen area selection screenshot to  ~/Pictures/screenshots/ folder
- `Ctrl + PrtScr` - save fullscreen screenshot to the clipboard
- `Ctrl + Shift + PrtScr` - save screen area selection screenshot to  the clipboard
- Remark: ~/Pictures/screenshots/fullscreen/ folder must exist

### i3-resurrect: saving and restoring workspaces after rebooting maching
Save workspaces (persist): `$mod + p`, and then `1`, `2`, `3`, `4`, `5`, `6`, `7` ,`8`, `9`, and then `Esc` or `Enter`
restore workspaces (open): `$mod +o`, and then `1`, `2`, `3`, `4`, `5`, `6`, `7` ,`8`, `9`, and then `Esc` or `Enter`


### Running sh scripts for GUI programs:  
You can run any sh script in a new window using: 
```sh
i3-msg 'exec path/to/script.sh'
```  
e.g.: 
```sh
i3-msg 'exec /home/user/pycharm-community-2021.3.3/bin/pycharm.sh'
```

### font for i3
to use installed bitmap fonts for i3status first you need to construct font string using ```xfontsel```
```xfontsel``` - terminal command to construct font for bitmap fonts.
samples of the result:

font -misc-fixed-medium-r-normal-*-15-*-*-*-*-*-iso10646-*                       
font -misc-fixed-medium-r-normal-*-13-*-*-*-*-*-iso10646-*                     
font -misc-fixed-medium-r-semicondensed-*-13-*-*-*-*-*-iso10646-*              
font -misc-fixed-medium-r-semicondensed-*-12-*-*-*-*-*-iso10646-*  
