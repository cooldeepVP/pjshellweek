#!/bin/bash

#directory /Users/kuldeeppilaji/localgit/Temp

function display_usage {
    echo "Running script : $0  "
}

#check if valid directory path is provided as CLI args
# $# will check total args & $1 should be directory

if [ $# -eq 0 ] || [ ! -d "$1" ]; then

    echo "Error :Please provide a valid directory path as a scommnad line "
    display_usage
    exit 1
fi
source_directory="$1"
#funcation to create timestnamp backup folder
function create_backup {
    local timestamp =$(date '+%Y-%m-%d_%H-%M-%S')
    local backup_dir="${source_directory}/KP_backup_${timestanmp}"
    mkdir "backup_dir"
    echo "Backup Created Successfully: $backup_dir"
    ##copy taks can be added here for now we just create backup folder
}

function perform_rotation {
    local backupCount=($(ls -t "${source_dir}/KP_backup_"* 2>/dev/null))

    #chcek for more than 3 backup
    

}


create_backup
perform_rotation
cal