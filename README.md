# odoo-docker-dev
Docker compose files and helper scripts to develop and prototype Odoo Projects quickly with Pycharm Professional

Version 12 and 13 have been setup in the corresponding folders. Previous version should be able to run by creating the corresponding folder via copy/paste and adjusting the following files:

- odoo-vXX/docker-compose.yml
- scripts-vXX/download_ce.sh
- scripts-vXX/download_ee.sh 

If you support many versions of odoo and want to get the latest release of each version, you should look into updating:

- sources_ce_update.sh
- sources_ee_update.sh
- sources_odoo-stubs.sh
- docker_image_pull.sh

If you want to run the latest releases of all, run: 

- update_all.sh

If you have access to the enterprise sources of odoo, you will need to set up a Personal Access Token in Github. Please read <a href="https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token" target="_blank">this</a> and set your token in this file: 

- token/token.txt

The scripts above and yaml files should set you up with Docker, lastest odoo sources for each version, and everything ready to run. The next steps will allow you to debug your source code within version 2020.1.2 of Pycharm Professional on a Mac. Other versions of Pycharm and other operating systems should work but it's up to you to confirm this. 



Once you are up and running with your odoo container you can: 

- scaffold: `docker exec <container_name>> /usr/bin/odoo scaffold test_module /mnt/extra-addons`
- odoo shell: `docker exec -it <container_name> bash -c "odoo shell -c /etc/odoo/odoo.conf -d <database_name>>"`
- pip install: `docker exec -u 0 -it <container_name> pip3 install <library_name>>`
- upgrade pip: `docker exec -u 0 -it <container_name> pip3 install --upgrade pip`

