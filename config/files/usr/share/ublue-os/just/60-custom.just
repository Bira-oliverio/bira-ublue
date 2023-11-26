!include 100-bling.just
# setup additional repos
setup-repos:
  sudo curl https://pkgs.tailscale.com/stable/fedora/tailscale.repo -o /etc/yum.repos.d/tailscale.repo
  sudo curl https://pkgs.tailscale.com/stable/fedora/repo.gpg -o /etc/pki/rpm-gpg/tailscale.gpg
  sudo curl https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo -o /etc/yum.repos.d/brave-browser.repo
  sudo curl https://brave-browser-rpm-release.s3.brave.com/brave-core.asc -o /etc/pki/rpm-gpg/brave-core.asc
  sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
  sudo curl https://packages.microsoft.com/keys/microsoft.asc -o /etc/pki/rpm-gpg/microsoft.asc
  sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://downloads.1password.com/linux/keys/1password.asc" > /etc/yum.repos.d/1password.repo'
  sudo curl https://downloads.1password.com/linux/keys/1password.asc -o /etc/pki/rpm-gpg/1password.asc
