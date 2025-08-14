# What are .desktop files

They are part of the [freedesktop](https://specifications.freedesktop.org/) project.

source: https://specifications.freedesktop.org/desktop-entry-spec/latest/

A desktop file is a unified standard among linux distros for creating application files that appear on menus, panes etc.

Desktop files can be added to `./local/share/applications`

They should be created with the `.desktop` file extension.

Every desktop file should be started with the `[group]` format, where `[Desktop Entry]` is mandatory.

Then we follow with `Key=Value` pairs for the entries.

Theres a bunch of entry keys we can use, see this list for reference: https://specifications.freedesktop.org/desktop-entry-spec/latest/recognized-keys.html

The most important ones are :

**Required**
- `Name`- The application name
- `Type`- The type often used is `Application`
- `Exec`- What this application should run, if its going to run a url, we simply use firefox http://localhost:5000 to make it run on firefox browser
- `Icon`- The absolute path to the icon for the application

**Optional**
- `Terminal` - This one is optional, but if we are running a command, we can attach the `Exec` to a terminal.

# Simple example
This example creates a simple application that opens the browser with a localhost client application for actualbudget.
```sh
[Desktop Entry]
Name=Actual
Type=Application
Exec=firefox http://localhost:5006
Icon=/home/yosang/.sync/actual/icon.png
```

# Advanced example
Shows the use of `[groups]`

```sh
[Desktop Entry]
Version=1.0
Type=Application
Name=Foo Viewer
Comment=The best viewer for Foo objects available!
TryExec=fooview
Exec=fooview %F
Icon=fooview
MimeType=image/x-foo;
Actions=Gallery;Create;

[Desktop Action Gallery]
Exec=fooview --gallery
Name=Browse Gallery

[Desktop Action Create]
Exec=fooview --create-new
Name=Create a new Foo!
Icon=fooview-new
```