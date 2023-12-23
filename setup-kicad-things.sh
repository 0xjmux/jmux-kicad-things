#!/bin/bash
# a simple script to set up my kicad global configuration across machines

KICAD_CONF_DIR="$HOME/.local/share/kicad/7.0"
REPO_DIR=$PWD
EXEC_TIME=$( date '+%F_%H:%M' )

# kicad folders to symlink (list to avoid code duplication)
CONF_DIRS=('footprints' 'symbols' 'template')

printf "This script will move the contents of your current kicad settings to '%s/old_kicad'. If you do not want this, exit now.\n\n" "$PWD"
printf "Additionally, make sure that you are running this from the directory the repository is installed in and your Kicad user config files are at %s\n\n" "$KICAD_CONF_DIR"

read -p "Do you want to continue? [Yy/Nn]: " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]
then
    mkdir -p "$REPO_DIR/old_kicad_setup"

    # replace all existing dotfiles with symlinks
    for e in "${CONF_DIRS[@]}"; do
        # if file exists and is not symlink (THIS SHOULD NOT HAPPEN)
        if [[ -f "$KICAD_CONF_DIR/$e" ]] && [[ ! -h "$KICAD_CONF_DIR/$e" ]]; then
            echo "$e exists as file, something is wrong!"
            exit 1;
#            mv "$KICAD_CONF_DIR/$e" "$REPO_DIR/old_kicad_confs"

        # if we exist as directory and are not a symlink
        elif [[ -d "$KICAD_CONF_DIR/$e" ]] && [[ ! -h "$KICAD_CONF_DIR/$e" ]]; then
            echo "'$e' exists as directory in user kicad configs"
            mv "$HOME/$e" "$REPO_DIR/old_kicad_confs/$e-$EXEC_TIME"

        elif [[ -h "$KICAD_CONF_DIR/$e" ]]; then
            echo "'$e' is already a symlink!"
            # ISSUE here! if it's a directory symlink, for some reason it doesn't like to recreate it (currently, we're forcing it to anyways)
            
        else
            # if it doesn't exist, don't link it
            echo "looks like '$KICAD_CONF_DIR/$e' doesn't exist (uhoh)"
            exit 1;
            #continue;
        fi
        # this FORCES a symlink creation to deal with old existing symlinks
        ln -f -s "$REPO_DIR/$e" "$KICAD_CONF_DIR/$e"
    done
fi

printf "\nSymlinks set up. Restart Kicad and check to see if the libraries are present!\n\n"

