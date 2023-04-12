#!/bin/zsh

# Initialize the output file
output_file=~/Desktop/yourApplications.txt
echo "" > $output_file

# Find all .app files and process each file
find / -type d -iname "*.app" 2>/dev/null | while read -r app_path; do
    # Extract the filename without the .app extension
    app_name=$(basename "$app_path" .app)

    # Append the app name to the output file
    echo $app_name >> $output_file
done

echo "All application names have been saved to yourApplications.txt on your Desktop."
