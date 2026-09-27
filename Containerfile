# 1. Base your OS on Bazzite (Keeps all Steam/gaming optimizations)
FROM ghcr.io/ublue-os/bazzite:stable

# 2. Remove default apps you don't want (Optional)
# Enter package names separated by spaces.
RUN rpm-ostree override remove firefox

# 3. Add the native applications you want pre-installed
RUN rpm-ostree install \
    fastfetch \
    git \
    zsh \
    tmux
