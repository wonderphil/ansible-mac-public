Ansible playbook and supporting files to deploy tools required on a new macbook

Steps to run:
  - Setup SSH key
  - sudo pip install ansible (if pip is installed)
  - clone this repo
  - change directory into the cloned area
  - ansible-playbook -i inventory main.yml

Something to remember, due to mac wanting to stop you installing non apple products, the first run of this will fail.
After the first time run system preferences -> security & Privacy -> General Tab -> allow app

Still more to do:

  * install docker ce
  * finish ror setup
  * push git files to correct location

