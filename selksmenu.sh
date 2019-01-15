#!/bin/bash

while :
do
    clear
    cat<<EOF
    ==============================
    Menusystem experiment
    ------------------------------
    Please enter your choice:

    SELKS First time install--------(1)
    Cleanup Database Logs-----------(2)
    Kernel Tuneup-------------------(3)
    Disable Interface Offloading----(4)
    Inital Moloch Database Setup----(5)
    Disable Suricata PCAP Capture---(6)
    Enable Suricata PCAP Capture----(7)
    Reconfigure Listening Interface-(8)
    Setup IDS Interface-------------(9)
    IDPS Interface Tuneup-----------(10)
    SELKS Upgrade-------------------(11)
    
           (Q)uit
    ------------------------------
EOF
    read -n1 -s
    case "$REPLY" in
    "1")  echo "Running first time install scripts" /usr/bin/./selks-first-time-setup_stamus.sh ;;
    "2")  echo "Clearing database logs" /usr/bin/./selks-db-logs-cleanup_stamus.sh ;;
    "3")  echo "Tuning up the kernel" /usr/bin/./selks-kernel-tuneup_stamus.sh ;;
    "4")  echo "Disabling offlading on interface" /usr/bin/./selks-disable-interface-offloading_stamus.sh ;;
    "5")  echo "Initalizing Moloch Database Setup" /usr/bin./selks-molochdb-init-setup_stamus.sh ;;
    "6")  echo "Disabling Suricata PCAP Capture" /usr/bin/./selks-disable-suri-capture_stamus.sh ;;
    "7")  echo "Enabling Suricata PCAP Capture" /usr/bin/./selks-enable-suri-captuire_stamus.sh ;;
    "8")  echo "Reconfiguring Listening Interface" /usr/bin/./selks-reconfigure-listening-interface_stamus.sh;;
    "9")  echo "Setting up IDS Interface" /usr/bin/./selks-setup-ids-interface.sh ;;
    "10")  echo "Tuning IDPS interface" /usr/bin/./selks-idps-interface-tuneup_stamus ;;
    "11")  echo "Checking for SELKS updates" /usr/bin/./selks-upgrade_stamus.sh ;;
    "Q")  exit                      ;;
    "q")  echo "case sensitive!!"   ;; 
     * )  echo "invalid option"     ;;
    esac
    sleep 1
done
