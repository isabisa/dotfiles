# Dotfiles

These are my dotfiles.

## Where do I put them?

`~/.dotfiles` is good.

## How do I use them?

These files are used to configure your Mac to your liking! All the apps you need to do your job are part of this.

There are a few steps you'll need to take to make sure everything goes as planned, both before and after you wipe your computer.

### BEFORE wiping your computer
1. Save any important files in Documents folder!
    - Bear notes
    - SSH keys
2. Make sure Documents is syncing with Google Drive or iCloud.
3. Make sure VS Code Settings Sync is "On."
4. Make sure all code changes (for projects AND this dotfiles repo) have been committed and pushed to Github.

### Wipe your computer
1. From the Apple menu  in the corner of your screen, choose System Preferences.
2. From the System Preferences menu in the menu bar, choose Erase All Content and Settings.
3. An erase assistant asks you to sign in with your administrator credentials. Enter the password that you use to log in to your Mac, then click OK.
4. Click Continue to proceed without making a new backup.
5. Click Continue to allow your settings, media, data, and the other listed items to be removed.
6. If you're asked to sign out of Apple ID, enter your Apple ID password and click Continue.
7. Click Erase All Content & Settings to confirm that you want to proceed.
8. Your Mac restarts and shows a black screen or progress bar.
9. You might be asked to select a Wi-Fi network or attach a network cable. To select a Wi-Fi network, use the Wi-Fi menu  in the upper-right corner of the screen.
10. After joining a network, your Mac activates. Click Restart.
11. After restart, a setup assistant guides you through the setup process, as if you're setting up your Mac for the first time.

### AFTER wiping your computer
1. Download this repo, extract the zip, and put the files in `~/.dotfiles`.
2. Double-click on `install.sh`.
3. Check the Brewfile for a list of apps you'll need to install manually.
4. Reconnect `~/.dotfiles` to repo.
5. Install Xcode command line utilities by running `xcode-select --install` in iTerm. Also probably will need to update Oh My Zsh.
