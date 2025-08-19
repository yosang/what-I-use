# Software
- CUPS (Common Unix Printing System) - Should be out of the box installed with the Fedora distro, if not do `sudo dnf install cups`

```sh
# Install it if not already
sudo dnf install cups

# Check if cups is running
sudo systemctl status cups

# Start and enable if not already
sudo systemctl enable --now cups
```

# Drivers
Search for printer drivers and install them

For my drivers these are found here: https://www.canon.no/support/consumer/products/printers/pixma/ts-series/pixma-ts3450.html?type=drivers&language=EN&os=Linux%20(64-bit)

We want the `IJ Printer` for printing and the `ScanGear` for scanning.

Drivers are available by `source code` (check the README for build) or `rpm` (sudo dnf install *.rpm)

# Installation
Just follow the instruction for each driver.

# Usage
Open cups on the browser, port is `631`

# Test the printer

We can find a lot of documentation at: http://localhost:631/help/options.html

Print a test page from the browser or from command line with `tp`

## Commands:

### Printing
- `lp` - Print files
- `lp [file_to_print.txt]` - Will print a file to a default printer
- `lp -d [printer_name] [file_to_print.txt]` - Will print a specific file on a specific printer

### Printers
- `lpstat` - CUPS management, such as show completed/pending jobs, show printers etc.
- `lpstat -p` - Will show printers

### Defaults
- `lpoptions -d [printer_name]` - Will set a specific printer as default