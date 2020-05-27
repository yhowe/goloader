# goloader
Curses(3) graphics loader for go play that supports subdirectories for the odroid-go.

GO-LOADER
=========

Goloader is an alternative loader for GO-PLAY written in curses(3) supporting
subdirectories.

The keys:
MENU: Settings menu - Volume, Brightness, ExtDAC.
      Volume (0 - 4)
		0  - silent
		4  - loudest
      Brightness (0 - 255)
		0 - backlight off
		255 full brightness
      ExtDAC (0 - 1)
		0 - Use speaker for audio.
		1 - Use external DAC (if supported by the emulator).
*NB: The settings menu can only be accessed after an emulator is selected.

B:
      Back.
A:
      Select Item.  If it is a directory it will be opened, otherwize if its a
      file it will be opened and run.

Arrow keys:
	Up down to navigate files.  Left right to change menu settings items.

Game Roms should be placed in the roms folder on the sdcard the same as GO-PLAY.

Nested subdirectories are alowed with a maximum displayable entries at 1024
items per directory.

Games can be placed inside and number of nested subdirectories.

Returning to the games menu:

Turn off the ODROID-GO.
Press and hold MENU.
While still pressing MENU turn on the ODROID-GO.

To use this loader flash with GO-PLAY:
Then flash goloader.bin:

python esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0x100000 ./goloader.bin

Change the paths to esptool.py and your USB device that is connected to your
ODROID-GO as necessary.
