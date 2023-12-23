# jmux Kicad Things

A place for my kicad symbols, footpritns, template files and other miscellanea.

This is best used with a clean Kicad installation. 

> [!NOTE]
> As of 12/23/2023 the full linking functionality of the `setup-kicad-things.sh` script has not been tested. 

To set up templates, libraries, and other files, run `setup-kicad-things.sh`.


### Contents (as of 12/23/2023)
* `footprints` contains footprints for my commonly used components along with custom ones
* `my_schematics` - schematics I commonly use in my designs"
* `symbols` - Schematic symbols
* `templates` - My templates for automatically setting up projects
* `setup-kicad-things.sh` - script to set up symlinks from `~/.local/share/kicad/7.0/` to the directories in this repo. 

#### Structure

```
├── footprints
│   ├── jmux-footprints.pretty
│   │   ├── 2x3 Card Edge Programming Connector.kicad_mod
│   │   ├── 5 Pin Pad array.kicad_mod
│   │   ├── AHT20.kicad_mod
│   │   ├── Connector_Card_Edge_M_2x3.kicad_mod
│   │   ├── SENSOR-TH_AHT21B.kicad_mod
│   │   ├── SOIC_clipProgESP8266.kicad_mod
│   │   ├── SOIC_clipProgSmall.kicad_mod
│   │   ├── TC-2050-IDC-SOCKET.kicad_mod
│   │   └── USB-C-SMD_G-SWITCH_GT-USB-7010ASV.kicad_mod
│   └── packages3d
│       └── SENSOR-TH_AHT21B.wrl
├── my_schematics
│   └── Power_and_board.kicad_sch
├── old_kicad_setup
├── README.md
├── setup-kicad-things.sh
├── symbols
│   ├── AHT20.lib
│   ├── AHT21B.kicad_sym
│   └── jmux-kicadlib.kicad_sym
└── templates
    └── esp8266-template
```


