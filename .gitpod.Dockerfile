From gitpod/workspace-full

# Install Starship prompt and init Fish shell with it.
RUN sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes

# Set some Starship config.
RUN touch ~/.config/starship.toml
RUN echo '[ruby] \n\
disabled = true \n\
[git_branch] \n\
symbol = "📦 "' >> ~/.config/starship.toml

# Create fish config dir.
RUN mkdir -p ~/.config/fish/
RUN echo "starship init fish | source" >> ~/.config/fish/config.fish