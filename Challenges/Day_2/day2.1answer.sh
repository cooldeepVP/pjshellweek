#!/bin/bash

#directory /Users/kuldeeppilaji/localgit/Temp

function display_usage {
    echo "Running script : $0  "
    cd $1
    ls -l
}

#check if valid directory path is provided as CLI args
# $# will check total args & $1 should be directory

if [ $# -eq 0 ] || [ ! -d "$1" ]; then

    echo "Error :Please provide a valid directory path as a scommnad line "
    display_usage
    exit 1
fi
source_dir="$1"
#funcation to create timestnamp backup folder
function create_backup {
    local timestamp=$(date '+%Y-%m-%d_%H-%M-%S') 
   
    local backup_dir="${source_dir}/backup_${timestamp}"
   
    mkdir  $backup_dir  
    #echo $backup_dir
    echo "Backup Created Successfully: $backup_dir"
    ##copy taks can be added here for now we just create backup folder
}

function perform_rotation {
    local backups=($(ls -t "${source_dir}/backup_"* 2>/dev/null))

    if [ "${#backups[@]}" -gt 3 ]; then
        local backups_to_remove="${backups[@]:3}"  # Get backups beyond the last 3
        rm -rf "${backups_to_remove[@]}"  # Remove the oldest backups
        echo "Deleted bkps more that three"
    fi

}

tput clear
create_backup
perform_rotation
