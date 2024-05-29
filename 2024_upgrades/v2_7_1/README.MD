# Codebase for UHM Library Upgrade from 2.5.1 to 2.7.1

- Notable changes --> See the [ASpace-Docs](https://github.com/UnivHI-MLib-Arch/ASpace-Docs/) repo for more detail:
  - new plugin, langscript_batchupdate (i.e. local name for the ASpace batch_update_lang_and_script plugin)
  - change to the plugins line of the config.rb file to add langscript_batchupate to the list of loaded plugins
  - all the changes entailed in upgrading ASpace from v. 2.5.1 to v. 2.7.1, most notably the new language field requirements.

ALSO NOTE: This version of the langscript_batchupdate plugin folder is missing the .gitignore file, as well several images (from the _README_images subfolder) that would ordinarily get displayed in its README file.  See the version of the plugin on the 2.7.1 test server for these missing files, or download them from [the original ASpace plugin repo](https://github.com/archivesspace-plugins/batch_update_lang_and_script)
