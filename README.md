Ansible playbook and supporting files to deploy tools required on a new macbook

Steps to run:
  - Setup SSH key
  - sudo pip install ansible (if pip is installed)
  - clone this repo
  - change directory into the cloned area
  - ansible-playbook -i inventory main.yml

Something to remember, due to mac wanting to stop you installing non apple products, the first run of this will fail.
After the first time run system preferences -> security & Privacy -> General Tab -> allow app

This uses plugin for visual code to pull down vscode porfile settings, it requires that you have it setup and have the gist id.  You need to add the gist id into the `files/settings.json` file.
See http://shanalikhan.github.io/2015/12/15/Visual-Studio-Code-Sync-Settings.html on how to use

If you want ruby and rails you can just leave the mail file `main.yml` as is.  I have found sometimes there is issue installing ruby because of openssl, restarting your terminal session and re-running normaly fixes it.

If you dont want ruby or rails then just comment out the tasks.

If you dont want the node installs just comment out the tasks.

** Remember to customise you bash profile to suit you! **
