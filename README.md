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
| `SUPER + ;`           | Open terminal            |
| `SUPER SHIFT + ;`     | Open alacritty in floating mode |
| `SUPER + z`           | Open zen                 |
| `SUPER + RETURN`      | Open vscodium            |
| `SUPER + e`           | Open dolphin             |
| `SUPER + "`           | Close window             |
| `Alt + F4`            | Kill window              |
| `SUPER + v`           | Toggle floating window   |
| `SUPER SHIFT + f`     | Fullscreen window        |
| `SUPER + P`           | Pseudo                   |
| `N.A`           | Center floating / Cycle scrolling proption |
| `N.A`     | Cycle scrolling proption back|
| `N.A`      | Reload hyprland config   |
| `N.A`           | Make active window a bit smaller |
| `N.A`           | Make active window a bit bigger |
    
  </td>
  <td>
    
| Bind                  | Description              |
|---------------------- |--------------------------|
| `Alt + Space`         | Drun (app runner)        |
| `SUPER + n`           | Notification center      |
| `SUPER + c`           | Clipboard                |
| `WIP`                 | Wallpapers               |
| `WIP`                 | Logout menu              |
| `WIP`           | File browser menu        |
| `SUPER SHIFT + v`     | Emoji selector           |
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

(Ignore this one)

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

