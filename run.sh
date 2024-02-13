#!/bin/bash
# ./run.sh tutorial_basic_functionality

FILE=$(pwd)/omni.replicator_yaml/$1.yaml

echo $FILE

if [ -f "$FILE" ]; then
    /isaac-sim/runheadless.native.sh  --no-window \
                                      --/omni/replicator/replicatorYaml/yamlPath=$FILE
    exit $?
else
    echo "File not found: $FILE"
    exit 1
fi