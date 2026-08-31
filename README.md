# Dots
For a -1000x engineering performance boost <br/>
<br/>
## General
Distro: Arch |CachyOS (latest)| <br/>
<br/>
Waybar: 
<pre>
Change volume with mouse wheel, click to open media controls <br/>  
time: 24hr, click to switch to DayOfWeek, DayOfMonth. Month(name) <br/>
workspaces: 7 of em <br/>
date: dd/mm/yyyy, hover for calendar (light theme ppl might need to change txt colour of calendar) <br/>
ram usage: % (hover for usage in GiB) <br/>
Wifi: name + % connectivity, click for IP <br/>
powerbutton: to turn off waybar <br/>
Alt + W = toggle waybar, SUPER + W = turn on waybar) <br/> 
</pre>

### System
-- model: Azuz vivobook 15 (I think) <br/>
-- monitor: MSI business monitor 27" (1440P 100Hz 16:9) <br/>
<br/>
## Credits
saneAspect (hyprland lua guide >> super helpful) <br/>
cebem1nt on Github (for swayNC and a few binding help) <br/>
hyprlandWiki - honestly so helpful <br/>
cachyOS-Wiki <br/>
ArchWiki <br/>
Reddit - for my binding help <br/>


<details open>
  <summary><h3>Hyprland</h3></summary>

<table>
  <tr><td>General</td><td>Menus & Navigation</td><td>Misc/Hacky</td></tr>
  <tr>
  <td>

| Bind                  | Description              |
|---------------------- |--------------------------|
| `SUPER + ;`           | Open alacritty           |
| `SUPER SHIFT + ;`     | Open alacritty in floating mode |
| `SUPER + n`           | Open zen                 |
| `SUPER + m`           | Open vscodium            |
| `SUPER + b`           | Open thunar              |
| `SUPER + q`           | Close window             |
| `SUPER SHIFT + q`     | Kill window              |
| `SUPER + f`           | Toggle floating window   |
| `SUPER SHIFT + f`     | Fullscreen window        |
| `SUPER + u`           | Pin window               |
| `SUPER + w`           | Center floating / Cycle scrolling proption |
| `SUPER SHIFT + w`     | Cycle scrolling proption back|
| `SUPER CTRL + r`      | Reload hyprland config   |
| `SUPER + z`           | Make active window a bit smaller |
| `SUPER + c`           | Make active window a bit bigger |
    
  </td>
  <td>
    
| Bind                  | Description              |
|---------------------- |--------------------------|
| `SUPER + r`           | Drun (app runner)        |
| `SUPER + t`           | Notification center      |
| `SUPER + v`           | Clipboard                |
| `SUPER + y`           | Wallpapers               |
| `SUPER + ESCAPE`      | Logout menu              |
| `SUPER + e`           | File browser menu        |
| `SUPER SHIFT + v`     | Glyphs selector          |
| `SUPER SHIFT + r`     | Shell commands runner    |
| `SUPER + arrow keys`  | move focus in direction  |
| `SUPER + 1...5`       | go to workspace          |
| `SUPER SHIFT + 1...5` | move to workspace        |
| `SUPER CTRL + 1...5`  | move & go to workspace   |
| `SUPER + s`           | toggle special workspace |
| `SUPER SHIFT + s`     | move to special workspace|
| `SUPER CTRL + s`      | move & go to special workspace|

  </td>
  <td>

| Bind                  | Description              |
|---------------------- |--------------------------|
| `SUPER + tab`         | Cycle workspace layout (dwindle, scrolling, ...) |
| `SUPER SHIFT tab`     | Cycle previous workspace layout |
| `SUPER + .`           | Play next song           |
| `SUPER + ,`           | Play previous song       |
| `SUPER + p`           | Pseudotile window        |
| `SUPER + x`           | Hide window (A.K.A "minimize") |
| `SUPER + o`           | Create a window group    |
| `SUPER + ]`           | Select next window in group |
| `SUPER + [`           | Select previous window in group |
| `SUPER SHIFT + .`     | Cycle next wallpaper     |
| `SUPER SHIFT + ,`     | Cycle prev wallpaper     |
| `SUPER SHIFT + /`     | Toggle wallpapes cycle   |
| `SUPER SHIFT + y`     | Switch between light and dark theme |
| `SUPER + space`       | Hide/show dock           |
| `SUPER SHIFT + space` | Reload waybar            |

  </td>
  </tr>
</table>

> For more detailed info see [`~/.config/hypr/config/binds.lua`](.config/hypr/modules/binds.lua).

</details>

<details>
  <summary><h3>Mango</h3></summary>

<table>
  <tr><td>General</td><td>Menus & Navigation</td><td>Misc/Hacky</td></tr>
  <tr>
    <td>

| Bind                  | Description              |
|---------------------- |--------------------------|
| `SUPER + ;`           | Open alacritty           |
| `SUPER SHIFT ;`       | Open alacritty in floating mode |
| `SUPER + n`           | Open zen                 |
| `SUPER + m`           | Open vscodium            |
| `SUPER + b`           | Open thunar              |
| `SUPER + q`           | Close window             |
| `SUPER SHIFT + q`     | Kill window              |
| `SUPER + w`           | Center floating window   |
| `SUPER + f`           | Toggle floating window   |
| `SUPER SHIFT + f`     | Fullscreen window        |
| `SUPER + u`           | Toggle global window     |
| `SUPER + i`           | Toggle window overlay mode|
| `SUPER CTRL  + r`     | Reload mango config      |
| `SUPER + z`           | Make active window a bit smaller |
| `SUPER + c`           | Make active window a bit bigger |
    
  </td>
  <td>
    
| Bind                  | Description              |
|---------------------- |--------------------------|
| `SUPER + r`           | Drun (app runner)        |
| `SUPER + t`           | Notification center      |
| `SUPER + v`           | Clipboard                |
| `SUPER + y`           | Wallpapers               |
| `SUPER + ESCAPE`      | Logout menu              |
| `SUPER + e`           | File browser menu        |
| `SUPER SHIFT + v`     | Glyphs selector          |
| `SUPER SHIFT + r`     | Shell commands runner    |
| `SUPER + arrow keys`  | move focus in direction  |
| `SUPER + 1...5`       | go to workspace          |
| `SUPER CTRL + 1...5`  | move to workspace        |
| `SUPER SHIFT + 1...5` | move & go to workspace   |
| `SUPER + x`           | Minimize window          |
| `SUPER SHIFT + x`     | Show minimized window    |
| `SUPER CTRL + x`      | Unminimize window|
  
  </td>
  <td>

| Bind                  | Description              |
|---------------------- |--------------------------|
| `SUPER + Tab`         | Overview / (A.K.A "Alt tab")|
| `SUPER + o `          | Labled overview (pick window)|
| `SUPER + .`           | Play next song           |
| `SUPER + ,`           | Play previous song       |
| `SUPER + g`           | Toggle all windows floating|
| `SUPER + /`           | Play / Pause song        |
| `SUPER + space`       | Hide/show dock           |
| `SUPER SHIFT + space` | Reload waybar            |
| `SUPER SHIFT + y`     | Switch between light and dark theme |
| `SUPER + w`           | Cycle scroller proption  |
| `SUPER SHIFT + w`     | Cycle scroller proption back|
| `SUPER + BACKSPACE`   | Focus previous window    |
| `SUPER SHIFT + >`     | Cycle next wallpaper     |
| `SUPER SHIFT + <`     | Cycle prev wallpaper     |
| `SUPER SHIFT + /`     | Toggle wallpapes cycle   |

  </td>
  </tr>
</table>

> For more detailed info see [`~/.config/mango/binds.conf`](.config/hypr/modules/binds.lua).

</details>
