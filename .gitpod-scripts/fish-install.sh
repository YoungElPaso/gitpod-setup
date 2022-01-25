# Symlink Fish shared directory (history etc) to ~/workspace so it can persist across workspace reload. (/workspace is persisted by Gitpod!)
# Create workspace .fish dir, history persists here.
mkdir -p /workspace/.fish/
# Create share dir, fish config has to go here - fish only allows symlink to this dir.
mkdir -p ~/.local/share/
# Symlink share to persisted workspace fish dir.
ln -s /workspace/.fish ~/.local/share/fish