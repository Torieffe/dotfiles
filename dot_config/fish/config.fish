source /usr/share/cachyos-fish-config/cachyos-config.fish
set -gx DOTNET_ROOT (asdf where dotnet)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/tori/Projects/lavoro/google-cloud-sdk/path.fish.inc' ]; . '/home/tori/Projects/lavoro/google-cloud-sdk/path.fish.inc'; end
