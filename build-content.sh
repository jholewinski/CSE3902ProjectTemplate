#!/bin/bash

project_path="$(dirname "$(readlink -f "$0")")"

source $project_path/build-common.sh

path_override=
if [[ $arch == "arm64" ]]; then
  path_override=$content_dotnet_path
else
  path_override=$system_dotnet_path
fi

PATH=$path_override:$PATH dotnet build -t:RunContentBuilder CSE3902Project.csproj || exit 1
