```
sudo apt-get update
sudo apt-get upgrade ansible -y
ansible-galaxy collection install nvidia.nvue
```



```
git clone https://github.com/bmerchant-ccs/osc
cd osc/
ansible switches -i hosts -m ping
ansible-playbook -i hosts playbooks/check-nvue-api.yml
ansible-playbook -i hosts playbooks/interface-mgmt.yml
ansible-playbook -i hosts playbooks/tor.yml
ansible-playbook -i hosts playbooks/system.yml
ansible-playbook -i hosts playbooks/interface-breakout.yml
ansible-playbook -i hosts playbooks/mlag.yml
ansible-playbook -i hosts playbooks/bridge.yml
ansible-playbook -i hosts playbooks/mlag-bonds.yml
ansible-playbook -i hosts playbooks/commands-new.yml
```
