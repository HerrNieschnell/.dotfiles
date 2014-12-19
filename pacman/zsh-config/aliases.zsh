# Pacman.
alias pac="pacman"

# Installs packages from repositories.
alias paci="sudo pacman --sync"

# Installs packages from files.
alias pacI="sudo pacman --upgrade"

# Removes packages and unneeded dependencies.
alias pacx="sudo pacman --remove"

# Removes packages, their configuration, and unneeded dependencies.
alias pacX="sudo pacman --remove --nosave --recursive"

# Displays information about a package from the repositories.
alias pacq="pacman --sync --info"

# Displays information about a package from the local database.
alias pacQ="pacman --query --info"

# Searches for packages in the repositories.
alias pacs="pacman --sync --search"

# Searches for packages in the local database.
alias pacS="pacman --query --search"

# Lists orphan packages.
alias pacman-list-orphans="sudo pacman --query --deps --unrequired"

# Removes orphan packages.
alias pacman-remove-orphans="sudo pacman --remove --recursive \$(pacman --quiet --query --deps --unrequired)"

# Clean package cache
alias pacman-clean-cache="echo "fehlt noch""


# Synchronizes the local package and Arch Build System databases against the
# repositories.
if (( $+commands[abs] )); then
  alias pacu="sudo pacman --sync --refresh && sudo abs"
else
  alias pacu="sudo pacman --sync --refresh"
fi

# Synchronizes the local package database against the repositories then
# upgrades outdated packages.
alias pacU="sudo pacman --sync --refresh --sysupgrade"

# Update Mirrors
alias pacman-update-mirrors="sudo reflector --verbose -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist"



# pacaur
alias auri="pacaur -S"
alias aurU="pacaur -Syu"
alias pacq="pacaur -Si"
