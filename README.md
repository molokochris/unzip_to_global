# Font Unzip Script

This script takes a ZIP file of fonts and unzips them to `/usr/share/fonts` inside a directory with the same name as the ZIP file.

## Prerequisites

- You need to have `unzip` installed on your system.
- You need `sudo` privileges to write to `/usr/share/fonts`.

## Usage

1. Save the script to a file, e.g., `unzip_font.sh`.

2. Make the script executable:
    ```sh
    chmod +x unzip_font.sh
    ```

3. Run the script with the ZIP file as an argument:
    ```sh
    ./unzip_font.sh yourfontfile.zip
    ```

### Example

If you have a ZIP file named `ZedMono.zip`, running the script will extract it to `/usr/share/fonts/ZedMono`.

### Script Content

```bash
#!/bin/bash

# This script takes a zip file of fonts and unzips them to /usr/share/fonts
# inside a dir with the same name as the zip file

# Set the zip file
zip_file=$1

# Set the directory to unzip to
unzip_dir=/usr/share/fonts/"${zip_file%.zip}"

# Unzip the file
sudo unzip -o "$zip_file" -d "$unzip_dir"

