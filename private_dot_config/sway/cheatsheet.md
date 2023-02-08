#  ArchKatze Cheatsheet : 
*you can change the key bindings in the config file* `.config/sway/conf.d/conf`

# General Keybinding
 = windows key

## Open application launcher(wofi)
 + x 

## Make the windows full screen
 + f 

## Close the selected window
 + q 

**by Holding   you can use mouse to resize or drag window to change their positions**

## Reload the config file after you change it
 + Shift + c

## Exit sway desktop
 + Shift + e

---


# Workspaces

## Swtich to workspaces by number
 + [0-9] 

## Move the windows to workspace
 + Shift + [0-9] 

## Go to the right workspace
 + Ctrl + l 
 + Ctrl + j 

## Go to the left workspace
 + Ctrl + h 
 + Ctrl + k 

## Switch to the Previously selected workspace (back and forth)
 + Space

---

# Workspace Layout

## Change to stack layout
 + s

##  Change to tabbed layout
 + w

##  Change to split layout (default)
 + e

---

# Monitors 

## Go to right monitor (output)
 + ] 

## Go to left monitor (output)
 + [ 

# Floating Windows

## Toggle the current windows tiling or floating mode
 + Shift + Space 

**Scratchpad is like a bag that you can carry bunch of floating windows inside it and take them out as you needed**
## Add selected window to the Scratchpad 
 + Shift + - 

## Hide or show the scratchpad window. This command cycles through all the scratchpad windows
 + - 

---

# Resize windows
**You can hold   to use mouse to resize or use the binding keys below**

## Change to resize mode
 + r 

**Exit the mode using Esc**

**You can use arrow keys or vim keys (hjkl) to resize the window**


# Applications

## Open Terminal
-  + Enter
-  + Ctrl + Enter `open in workspace 1`

## Open Browser
-  + g
-  + Ctrl + g `open in workspace 6`

## Open Music
-  + m
-  + Ctrl + m `open in workspace 4`

## Open obsidian
-  + o
-  + Ctrl + o `open in workspace 3`

## Open superproductivity
-  + '
-  + Ctrl + ' `open in workspace 3`

## Screenshot
-  + p
-  + Ctrl + p
-  +  Alt + p
-  + Shift + p

---

### change window focus,like vim
 + h focus left
 + j focus down
 + k focus up
 + l focus right

### alternatively, you can use the cursor keys:
 + Left focus left
 + Down focus down
 + Up focus up
 + Right focus right

### move a focused window
 + Shift + h move left
 + Shift + j move down
 + Shift + k move up
 + Shift + l move right

### alternatively, you can use the cursor keys:
 + Shift + Left move left
 + Shift + Down move down
 + Shift + Up move up
 + Shift + Right move right

### split in horizontal orientation (changes take place on next opened window):
 + b 

### split in vertical orientation (changes take place on next opened window):
 + v

### enter fullscreen mode for the focused container:
 + f fullscreen toggle

### change container layout (stacked, tabbed, toggle split):
 + s layout stacking
 + w layout tabbed
 + e layout toggle split

### toggle tiling / floating:
 + Shift + space floating toggle

### change focus between tiling / floating windows:
 + space focus mode_toggle

### focus the parent container:
 + a focus parent

### resize floating window:
 + right mouse button

### move floating window:
 + left mouse button

### scratchpad:
 + Shift + Minus move scratchpad
 + minus scratchpad cycle

### resize mode:
 + r

### resize,like vim:
h focus left
j focus down
k focus up
l focus right

### alternatively, you can use the cursor keys:
Left focus left
Down focus down
Up focus up
Right focus right

### Return to default mode:
Return or Escape

### Workspaces:
###
 ### Switch to workspace
    + 1 workspace number 1
    + 2 workspace number 2
    + 3 workspace number 3
    + 4 workspace number 4
    + 5 workspace number 5
    + 6 workspace number 6
    + 7 workspace number 7
    + 8 workspace number 8
    + 9 workspace number 9
    + 0 workspace number 10
  ### Move focused container to workspace:
    + Shift + 1 move container to workspace number 1
    + Shift + 2 move container to workspace number 2
    + Shift + 3 move container to workspace number 3
    + Shift + 4 move container to workspace number 4
    + Shift + 5 move container to workspace number 5
    + Shift + 6 move container to workspace number 6
    + Shift + 7 move container to workspace number 7
    + Shift + 8 move container to workspace number 8
    + Shift + 9 move container to workspace number 9  
    + Shift + 0 move container to workspace number 10


### Multimedia Keys (be aware that these may not work for every keyboard):
They are enabled -  you may need to hold down the function key while doing so.
  
   ### Screenshots:
    PrintSrc for full screenshot
    Shift + PrintSrc for screenshot options

### App Shortcuts:
 + n thunar
 + o firefox


### Other Things:

  ### Input - ~/.config/sway/config.d/input
    ### You can get the names of your inputs by running: swaymsg -t get_inputs
    ### Put your touchpad's IDENFICATOR to replace "Touchpad-ID" (keep the quotation marks)
    ### Read `man 5 sway-input` for more information about this section.
  
  ### Output - ~/.config/sway/config.d/output
    ### You can get the names of your outputs by running: swaymsg -t get_outputs
    ### Read `man 5 sway-output` for more information about this section.
  
  ### Wallpaper - ~/.config/sway/config.d/theme
    ### exec swaybg -i /path/to/wallpaper
  
  ### Waybar - ~/.config/waybar/config : ~/.config/waybar/style.css
    ### It is an external bar we have chosen because of the option's it allows.
    ### If you wish to use the default swaybar - ~/.config/sway/config.d/theme and change waybar to sway-bar
    ### Read `man 5 sway-bar` for more information about this section
  
  ### Autostart - ~/.config/sway/config.d/autostart_applications

  
