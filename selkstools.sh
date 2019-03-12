#!/bin/bash
# SELKS MENU System
clear
title="~*~*~*~*~*~*SELKS Toolbox Menu*~*~*~*~*~*~"
echo "$title"
PS3='Select SELKS option: '
options=("SELKS First time install" "Cleanup Database Logs" "Kernel Tuneup" "Disable Interface Offloading" "Inital Moloch Database Setup" "Disable Suricata PCAP Capture" "Enable Suricata PCAP Capture" "Reconfigure Listening Interface" "Setup IDS Interface" "IDPS Interface Tuneup" "SELKS Upgrade" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "SELKS First time install")
            echo "Running first time install scripts"
            /usr/bin/./selks-first-time-setup_stamus
            ;;
        "Cleanup Database Logs")
            echo "Clearing database logs"
            /usr/bin/./selks-db-logs-cleanup_stamus
            ;;
        "Kernel Tuneup")
            echo "Tuning the Kernel"
            /usr/bin/./selks-kernel-tuneup_stamus
            ;;
        "Disable Interface Offloading")
            echo "Disabling offloading on interface"
            /usr/bin/./selks-disable-interface-offloading_stamus
            ;;
        "Inital Moloch Database Setup")
            echo "Setting up inital Moloch database"
            /usr/bin./selks-molochdb-init-setup_stamus
            ;;
        "Disable Suricata PCAP Capture")
            echo "Disabling Suricata PCAP Capture"
            /usr/bin/./selks-disable-suri-capture_stamus
            ;;
        "Enable Suricata PCAP Capture")
            echo "Enabling Suricata PCAP Capture"
            /usr/bin/./selks-enable-suri-capture_stamus
            ;;
        "Reconfigure Listening Interface")
            echo "Reconfiguring listening interface"
            /usr/bin/./selks-reconfigure-listening-interface_stamus
            ;;
        "Setup IDS Interface")
            echo "Setting up IDS Interface"
            /usr/bin/./selks-setup-ids-interface
            ;;
        "IDPS Interface Tuneup")
            echo "IDPS Interface tuneup"
            /usr/bin/./selks-idps-interface-tuneup_stamus
            ;;
        "SELKS Upgrade")
            echo "Checking for upgrades for SELKS"
            /usr/bin/./selks-upgrade_stamus
            ;;            
        "Quit")
            break
            ;;
       *) echo invalid option;;
    esac
    counter=1
    SAVEIFS=$IFS
    echo "~*~*~*~*SELKS Toolbox Menu*~*~*~*~"
    IFS=$(echo -en "\n\b")
    for i in ${options[@]};
    do
        echo $counter')' $i
        let 'counter+=1'
    done
    IFS=$SAVEIFS
done
