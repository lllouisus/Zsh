# export PYTHON=$(which python3)
export TRASH=~/.local/share/Trash/files

# 
rm() {
    for f in $*;
    do
        dir=$TRASH/$(date '+%Y%m%d-%H%M')
        target=$dir/${f##*/}
        mkdir -p $dir
        [ -f $f ] && mv $f $target;
        [ -d $f ] && mv $f $target;
    done
}

