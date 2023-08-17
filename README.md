# NixOS config

## Using standalone ```home manager```

Switch to unstable channel:
```bash 
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixost
```
Update channel:
```bash
sudo nixos-rebuild switch --upgrade
```

Add unstable ```home-manager``` channel
```bash
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
```
Once you are done adding a channel by using any of one command shown above, update the channel using the following:
```bash
sudo nix-channel --update
```
Install ```home-manager```
```bash
sudo nix-channel --update
```
Clone repository to your home folder.
Run:
```bash
sudo nixos-rebuild switch --flake './flakes#<your_host_name>'
home-manager switch --flake ./flake#<USERNAME>
```