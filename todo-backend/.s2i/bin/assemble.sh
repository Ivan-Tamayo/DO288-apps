#!/bin/bash

echo "Performing the S2I build..."

#TODO: add call to the standard S2I assemble script
echo "Just avant assemble script"
/usr/libexec/s2i/assemble
echo "-----> Juste after assemble script"
rc=$?

if [ $rc -eq 0 ]; then
    echo "Recording successful build on the life cycle management system..."
else
    echo "Not calling the life cycle management system: S2I build failed!"
fi
exit $rc
