# Quit System Preferences
osascript -e 'tell application "System Preferences" to quit'

# Tap click on the trackpad
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1

# Hide main menu
defaults write "Apple Global Domain" _HIHideMenuBar -int 1

# Hide the dock
defaults write com.apple.dock autohide -int 1

# Change theme to dark/grey
defaults write "Apple Global Domain" AppleInterfaceStyle -string Dark
defaults write "Apple Global Domain" AppleColorVariant -int 6

# Small Finder sidebar icon size
defaults write "Apple Global Domain" NSTableViewDefaultSizeMode -int 1

# Disable UI sounds
defaults write com.apple.sound.uiaudio.enabled -int 0
defaults write com.apple.sound.beep.volume -int 0

# Faster key repeat
defaults write "Apple Gobal Domain" KeyRepeat -int 2
defaults write "Apple Global Domain" InitialKeyRepeat -int 15

# Disable automatic spelling correction
defaults write NSAutomaticSpellingCorrectionEnabled -int 0
defaults write WebAutomaticSpellingCorrectionEnabled -int 0

# Disable automatic capitalization
defaults write NSAutomaticCapitalizationEnabled -int 0

# Disable automatic period insertion on double-space
defaults write NSAutomaticPeriodSubstitutionEnabled -int 0

# Full keyboard access (tab across all UI elements)
defaults write AppleKeyboardUIMode -int 2

# Remove Siri from main menu
defaults write com.apple.Siri StatusMenuVisible -int 0
defaults write com.apple.systemuiserver "NSStatusItem Visible Siri" -int 0
