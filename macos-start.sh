sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart \
-activate -configure -access -on \
-configure -allowAccessFor -specifiedUsers \
-configure -users root \
-configure -restart -agent -privs -all

sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart \
 -configure -access -on -privs -all -users root

PDISK=$(diskutil list physical external | head -n1 | cut -d" " -f1)
APFSCONT=$(diskutil list physical external | grep "Apple_APFS" | tr -s " " | cut -d" " -f8)
sudo diskutil repairDisk $PDISK
sudo diskutil apfs resizeContainer $APFSCONT 0
brew tap jakehilborn/jakehilborn && brew install displayplacer
