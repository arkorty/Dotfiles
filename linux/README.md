# My Linux Dotfiles

This repository contains the configuration files (dotfiles) for my Linux system. It includes settings for various applications and tools to customize and enhance your Linux experience.

## Installation

To manage and synchronize these dotfiles, I use [GNU Stow](https://www.gnu.org/software/stow/). Here’s how you can set it up:

### Prerequisites

Ensure you have GNU Stow installed. You can install it using your package manager. For example, on Debian-based systems:

```sh
sudo apt-get install stow
```

### Cloning the Repository

First, clone this repository to your home directory or any directory you prefer:

```sh
git clone https://github.com/arkorty/dotfiles.git
cd Dotfiles
```

### Stowing Directories

Use Stow to create symbolic links for all configuration files in your home directory:

```sh
stow .
```

This will create the necessary symbolic links in your home directory, pointing to the files in the repository.

### Unstowing Directories

If you need to remove the symbolic links created by Stow, you can use the `-D` flag:

```sh
stow -D .
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
