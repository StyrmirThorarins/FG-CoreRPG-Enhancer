# UNDER DEVELOPMENT ALPHA STATE

# FG-RPG-Enhancer

A community extension I'm writing to improve the CoreRPG ruleset, that many other rulesets have at its core, in Fantasy Grounds Unity.

## Design Goal

A minimalist streamlined well seperated codebase extension, including a number of broad ranged improvements for the CoreRPG ruleset, written for Fantasy Grounds Unity.

### Prerequisites

You need to have a copy of Fantasy Grounds Unity installed on your computer. 
https://www.fantasygrounds.com/home/home.php


### Installing
    
1) Open the folder "- Extension Files"
Download the latest version of the extension file: "CoreRPG-Enhancer v?_?_?.ext"

Contains:
This is the actual extension, it includes the compressed codebase and a number of graphics.

2) Copy this file to your extension folder (example: Fantasy Grounds\Data\extensions\ [place file here] ).

3) Enable the 'CoreRPG Enhancer v?_?_?' extension for your campaign in Fantasy Grounds.


## Built With

* [LUA](https://www.lua.org/) - Lua is a powerful, efficient, lightweight, embeddable scripting language. It supports procedural programming, object-oriented programming, functional programming, data-driven programming, and data description. 
* [XML](https://www.w3.org/TR/REC-xml/) - Extensible Markup Language (XML) 1.0 (Fifth Edition)
* [FG API](https://www.fantasygrounds.com/refdoc/) - Fantasy Grounds API as created by SmiteWorks.

## Versioning

I use [SemVer](http://semver.org/) for versioning, with version number MAJOR.MINOR.PATCH, increments.

## Authors

* **Styrmir Thorarinsson** - *All Work* - [Styrmir Thorarinsson](https://github.com/StyrmirThorarins)

## License

This project is licensed under private License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* SmiteWorks rulesystem and API code.

# Menu Options 'CoreRPG Enhancer, Battle Map Settings'
- Show CT active actor underlay (DM only): Toggle to add underlay under CT active actor.
- Show faction/space underlay: Shows or hides the underlay added for tokens faction (friend/foe/neutral). Re-add tokens to update.
- Show reach underlay: Shows or hides the reach underlay added on hover for tokens. Re-add tokens to update.
- Minimize token rotation: Minimizes token rotation as much as possible when mouse wheel is scrolled over token. Tries to reset it as turning straight up on mouse scroll.
- Token underlay opacity (GM only): Select the opacity of the graphical highlight underneath tokens when hovering over items in the combat tracker.

# Menu Options 'CoreRPG Enhancer, Window Resizing'
- New menu options that enable you to change your default window sizes for a lot of different types.

## Features, Combat
- Delete tokens from map and CT with single mouse click. 
    Alt + left mouse-click on token on map, deletes the token from the map.
    Alt + Ctrl + left mouse-click on token on map, deletes the token from the map and from the CT.
- 'Reach underlay' and 'Faction/space underlay' made as toggle switches in the menu items. Re-add tokens to update.
- Active actor on CT token underlay made as toggle switches in the menu items. Clears all other underlays than the current actor.

## Features, Interface
- Content Share, allows you and your players to right click on certain content items and post the descriptive text directly to the chat text by selecting the new 'Post Text in Chat' menu option at the bottom.
- New menu options in your settings, under 'Window Resizer 5E'.
    Set as default window sizes on activation. But you can enable larger windows for any or all windows from the window menu.
    Resizes windows on the fly to whatever setting you choose.
    You can return to the default window sizes at any time.
    If a window has been resized manually and is therefore in the 'windowstate.xml' file of your campaign, that takes precedence over the extension. This enables you to manually configure any windows you'd like.


## Roadmap
Primary
- Highlight of selected token for GM, underlay, with opacity settings in menu.
- Effects as tooltip option on hover over token option.
- On token click, highlight same actor in CT.
Secondary
- Altitude for tokens.

## Things to patch
Several menu options included blank options. (scripts/menu_item_register.lua)

## Releases
v0.1.0 (December, 15th, 2019)  
First version of CoreRPG Enhancer released. 
- 'Reach underlay' and 'Faction/space underlay' made as toggle switches in the menu items. (scripts/manager_token.lua: updateSizeHelper)
- Menu option to display and underlay under tokens on the map that are active in the combat tracker. Clears all other underlays than the current actor. (scrips/token_highlighter.lua | manager_token.lua: updateActiveHelper)
- Added code for window resizing. (scripts/window_resize.lua)
- Added menu items for window resizing. (CoreRPG Enhancer, Window Resizing)
- Drag and drop conditions on targets in CT or tokens on map, if already on target then remove, otherwise add. When an effect is dropped on a target in the CT or on a CT linked token on the map. If that target already has that effect, then it is removed from the target instead. (scripts/token_effects_handler.lua)