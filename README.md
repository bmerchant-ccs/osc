Load the OSC-switches-servers-noOOB.dot into Nvidia Air. Make sure 
the "enable OOB" radio button is checked and create the simulation
It's often necessary to wait 5-10 minutes after the simulation boots
for all the configuration to be done. It's sometimes necessary to
reset all switches after the simulation is finished provisioning for
them to pick up a DHCP address on eth0

```
git clone https://github.com/bmerchant-ccs/osc
git clone https://gitlab.com/nvidia-networking/systems-engineering/nvue
sudo apt-get update
sudo apt-get upgrade ansible -y
ansible-galaxy collection install nvidia.nvue
cd nvue
git checkout cumulus-linux-58-automation-workshop
cp playbooks/check-nvue-api.yml ../osc/playbooks/
```

Annoyingly have to manually log into all switches and change the default password here
Be sure to change the password in the ansible hosts file too

```
cd ~/osc/
ansible switches -i hosts -m ping
ansible-playbook -i hosts playbooks/check-nvue-api.yml
ansible-playbook -i hosts playbooks/interface-mgmt.yml
ansible-playbook -i hosts playbooks/system.yml
ansible-playbook -i hosts playbooks/bridge.yml
ansible-playbook -i hosts playbooks/interface-vlan.yml
ansible-playbook -i hosts playbooks/mlag.yml
ansible-playbook -i hosts playbooks/interface-mlag-bonds.yml
ansible-playbook -i hosts playbooks/interface-bonds.yml
ansible-playbook -i hosts playbooks/interface.yml
```
