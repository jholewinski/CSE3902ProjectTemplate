#!/bin/bash

project_path="$(dirname "$(readlink -f "$0")")"
echo "Project Path: $project_path"

source $project_path/build-common.sh

# Make sure the editor app has been patched to symlink the .NET assemblies
app_path="$HOME/.nuget/packages/dotnet-mgcb-editor-mac/3.8.2.1105/tools/net8.0/any/MGCB Editor.app/Contents/MacOS"
echo "Editor App Path: $app_path"

if [ ! -d "$app_path" ]; then
    cat << EOF
ERROR: The MGCB editor app does not appear to be installed. Make sure
you have tried to build the project at least once before trying to open
the content editor.
EOF
fi

if [ ! -d "$app_path/shared" ]; then
    echo "Adding .NET SDK symlink to editor app"
    ln -s $content_dotnet_path/shared "$app_path/shared"
else
    echo "Editor app appears to already be patched with .NET symlink"
fi

echo "Launching app... It may take a few seconds to open."
PATH=$content_dotnet_path:$PATH dotnet mgcb-editor

# Give the app time to launch before VSCode kills the script
sleep 5
