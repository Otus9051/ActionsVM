sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart \
-activate -configure -access -on \
-configure -allowAccessFor -specifiedUsers \
-configure -users root \
-configure -restart -agent -privs -all

sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart \
 -configure -access -on -privs -all -users root

brew tap jakehilborn/jakehilborn && brew install displayplacer
