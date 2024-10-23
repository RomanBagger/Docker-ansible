# Instructions for launching playbook 

#1.You must have Docker

#2. Clone repo 
git clone <https://github.com/RomanBagger/Docker-ansible.git>
cd Docker-ansible

#3.You need change chmod for script, if it's don't have this permission
sudo chmod +x script.sh

#4. Also you need move your playbook for current directory
#for example "mv /home/azureuser/playbooks/playbook.yml /home/azureuser/Docker-ansible

#5.Conteiners will be find in sleep, so you need write command below, that run your playbook.

docker exec -it ansible_container_2.8.6 ansible-playbook /ansible/playbook.yml
docker exec -it ansible_container_2.10.3 ansible-playbook /ansible/playbook.yml
