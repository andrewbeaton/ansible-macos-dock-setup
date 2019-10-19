# Ansible macOS Dock Setup

Manages the applications displayed on the macOS dock, such as which applications to display and in what order.
Tested on both macOS Catalina and macOS Mojave. Note the applications locations have changed in macOS Cataline

## Information

Tested on both macOS Catalina and macOS Mojave. Note that the macOS application locations have changed in macOS Catalina as shown in the example below.

### Adding dock items

Edit 'default.config.yml' and add the dock items to display by name, location and position:

````
# Catalina system applications are stored in /System/Applications/
# User added applications are stored in /Applications/

dockitems_to_persist:
  - name: Launchpad
    path: "/System/Applications/Launchpad.app"
    pos: 1
  - name: Google Chrome
    path: "/Applications/Google Chrome.app"
    pos: 2
  - name: Royal TSX
    path: "/Applications/Royal TSX.app"
    pos: 3
  - name: iTerm 2
    path: "/Applications/iTerm.app"
    pos: 4
  - name: System Preferences
    path: "/System/Applications/System Preferences.app"
    pos: 5
  - name: Notes
    path: "/System/Applications/Notes.app"
    pos: 6
```` 

## Example usage

````
$ ansible-playbook -i inventory --ask-become-pass main.yml
````

## License

MIT / BSD
 
