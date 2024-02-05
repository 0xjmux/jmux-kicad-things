# jmux Kicad Things

A place for my kicad symbols, footpritns, template files and other miscellanea.

This is best used with a clean Kicad installation. 

Some symbols/footprints in here are imported from easyeda using [easyeda2kicad](https://hackaday.com/2023/08/08/easyeda2kicad-never-draw-a-footprint-again/), others are drawn by me for specific components I commonly use, and others are of my own creation. 

A lot of my designs also incorporate things from the following libraries:
* [kicad-tag-connect](https://github.com/nawotech/kicad-tag-connect) by nawotech
* [SOICbite](https://github.com/SimonMerrett/SOICbite) by SimonMerrett
* The Espressif KiCad Library (installed via Kicad)

> [!NOTE]
> As of 12/23/2023 the full linking functionality of the `setup-kicad-things.sh` script has not been tested. Use with caution.

To set up templates, libraries, and other files, run `setup-kicad-things.sh`. This script links the user-configurable kicad directories to the ones contained in this repository, which makes setup easy. 

### Repo Highlights
* SOICBite UART and JTAG connector symbols for custom boards
<p align="center">
<img alt="" src="files/ProgConn-SOICBite-Symbol-Example.png" width="400" /><br>
Example of the SOICBite symbol in use, from my [iot_pwm_leddriver](https://github.com/0xjmux/iot_pwm_leddriver) project. 
</p>

* Reversible UART bridge, which lets you easily swap your TX/RX in case you mess it up on a prototype
<p align="center">
<img alt="" src="files/ReversibleUART_Layout_example.png" width="400" /><br>
Layout example for the UART bridge
</p>

* Templates for the ESP8266 and ESP32-SOLO, set up with my default parts (most of which are from the JLCPCB Basic parts library)
<p align="center">
<img alt="" src="files/esp32-solo-template-menu-screenshot.png" width="400" /><br>
Template page and description for my ESP32-Solo template
</p>

* `Breadboard-Proto` symbol library, quick symbols for breadboard project protyping. 


### Contents
* `footprints` contains footprints for my commonly used components along with custom ones
* `my_schematics` - schematics I commonly use in my designs
* `symbols` - Schematic symbols
* `templates` - My templates for automatically setting up projects
* `setup-kicad-things.sh` - script to set up symlinks from `~/.local/share/kicad/7.0/` to the directories in this repo, and move the existing files to `old_kicad_setup/`

#### Structure

```
├── footprints
│   ├── jmux-footprints.pretty
│   └── packages3d
├── my_schematics
│   └── Power_and_board.kicad_sch
├── old_kicad_confs
├── README.md
├── setup-kicad-things.sh
├── symbols
│   ├── AHT20.lib
│   ├── AHT21B.kicad_sym
│   ├── Breadboard-Proto.kicad_sym
│   └── jmux-kicadlib.kicad_sym
└── templates
    ├── esp32-s2-solo-template
    └── esp8266-template
    
```


