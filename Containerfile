# 1. Base your OS on Bazzite
FROM ghcr.io/ublue-os/bazzite:stable

# 2. Add native terminal tools
RUN rpm-ostree install \
    fastfetch \
    git \
    zsh \
    tmux

# 3. Pre-install desktop apps via Flatpak
RUN flatpak remote-add --if-not-exists flathub https://flathub.org && \
    flatpak install --system -y flathub \
    com.discordapp.Discord \
    org.vinegarhq.Sober \
    org.prismlauncher.PrismLauncher
