Typical running order of these helper scripts:
    # NOTE: documentation-default-settings-update.pl is now located in documentation folder
    - <at least one pdflatex of documentation to get total listings correct (for .rst)>
    - perl documentation-default-settings-update.pl
    - perl documentation-default-settings-update.pl -r
    - <change update-version appropriately>
    - update-version.sh
    - copy-to-usb.sh
    - <reboot to Windows>
    - create-windows-executable.bat
    - <reboot to Ubuntu>
    - <add latexindent.exe to directory>
    - <update documentation/changelog.md>
    - <commit changes and push>
    - <pull request to master>
    - <pull from master>
    - git tag "V<number>"
    - git push --tags
    - <update release notes on github>
    - prepctan.sh
    - <upload to ctan>
