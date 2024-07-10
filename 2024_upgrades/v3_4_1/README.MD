# Codebase for UHM Library's Upgrade from AS 2.7.1 to 3.4.1

- The 'asDownloaded' folder contains the v3.4.1 code as downloaded from the official ArchivesSpace repo.  As such, it does not represent ASpace 3.4.1 as installed at UHML.  
- The 'asCustomized' folder is (as of June 2024) a working folder to create / track UHML's customizations (local and other plugins, config file changes, etc.). This will (eventually) include the following notable changes from older (i.e. 2.x.x) versions:
  - refactoring previous plugins and customizations to streamline them and make them align with ASpace best practice (e.g. making changes via plugins rather than via changes to core code)
  - dropping former plugins that have now been implemented in the core code (e.g. spreadsheet batch import)
  - other assorted minor bugfixes and feature improvements (e.g. making UHML logo in SUI and PUI headers a clickable button/link to the library home page)
  - all other changes entailed in upgrading ASpace from v. 2.7.1 to v. 3.4.1. (see the [ASpace-Docs](https://github.com/UnivHI-MLib-Arch/ASpace-Docs/) repo for more detail)

It should be noted, however, that this repo does NOT include customized changes / defaults that are set in the SUI itself.  For a record of those changes, see the [ASpace-Docs](https://github.com/UnivHI-MLib-Arch/ASpace-Docs/) repo.  (TO DO: make sure the staff manual's 'release notes' section includes this information.)

## Known issues

- See the '[Present Status](https://github.com/UnivHI-MLib-Arch/ASpace-Docs/blob/main/Upgrade_History/PresentStatus.md)' page of the ASpace-Docs repository for the current list of known issues.
