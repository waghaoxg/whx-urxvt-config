EXT_DIR=~/.urxvt/ext
BUNDLE_DIR=~/.urxvt/bundle
if [ -d "$EXT_DIR" ];
then
    echo "$DIR directory exists. Doing nothing"
else
    mkdir $EXT_DIR
    mkdir $BUNDLE_DIR
    cd $BUNDLE_DIR
    #install autocomplete
    git clone https://github.com/vifon/autocomplete-ALL-the-things.git
    cp autocomplete-ALL-the-things/autocomplete-ALL-the-things $EXT_DIR
    #install keyboard
    git clone https://github.com/muennich/urxvt-perls.git 
    cp urxvt-perls/keyboard-select $EXT_DIR
    #install tabbedalt
    git clone https://github.com/gryf/tabbedalt.git
    cp tabbedalt/tabbedalt $EXT_DIR
fi
