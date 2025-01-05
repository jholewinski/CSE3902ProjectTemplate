
verify_dotnet_install() {
    local path=$1
    local arch=$2

    if [ ! -d $path ]; then
        cat << EOF
ERROR: $arch .NET SDK not installed. Go to:
https://dotnet.microsoft.com/en-us/download/dotnet/8.0
and download the latest "SDK 8.0.xxx" package for "macOS $arch".
Run the package, follow the prompts in the installer, and then
retry this build.
EOF
        exit 1
    fi
}

arch=$(uname -m)
echo "Kernel Architecture: $arch"

system_dotnet_path=/usr/local/share/dotnet
echo "System .NET Path: $system_dotnet_path"

if [[ $arch == "arm64" ]]; then
    content_dotnet_path=/usr/local/share/dotnet/x64
    verify_dotnet_install $system_dotnet_path Arm64
    verify_dotnet_install $content_dotnet_path x64
else
    content_dotnet_path=/usr/local/share/dotnet
    verify_dotnet_install $system_dotnet_path x64
fi

echo "Content .NET Path: $content_dotnet_path"
