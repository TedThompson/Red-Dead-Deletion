# Red-Dead-Deletion

Quick launcher that allows you to easily delete the cache files for Red Dead Redemption 2 or Online on PC.

## How to use

* If you don't have one, create a shortcut on your desktop using the game launcher you usually use (Epic, Rockstar)
* Move or Copy that shortcut to your RDR2 folder (Where RDR2.exe lives)
* Put this .BAT file in that same directory
* Create a *new* Shortcut to this .BAT file on your desktop
* ???
* Profit!

## How it works

This will open a Command window and present you with the option to delete or not delete the "sga_" files in /Rockstar Games/Red Dead Redemption 2/Settings folder.

Astute observers may notice that this accesses the Windows Registry. This is to get the location of your "My Documents" folder, as this can be moved in Windows, and is where the cache files reside.

For me, this seems to help when I get a GFX_MEM or FFFFFFFF error seemingly from nowhere, so I made this script to make it easier.

## DISCLAIMER

I am not responsible for anything, ever. Use at your own risk.
