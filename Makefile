setup:
		ansible-playbook playbook/setup/playbook.setup.yml -i inventory.ini
cluster:
		ansible-playbook ./playbook/k8s/playbook.kubecluster.yml -i inventory.ini
clean:
		ansible-playbook playbook/k8s/playbook.deletecluster.yml -i inventory.ini
setupHLF :
		ansible-playbook playbook/hyperledger/playbook.setupHLF.yml -i inventory.ini
deployHLF :
		ansible-playbook ./playbook/hyperledger/playbook.deployHLFNetwork.yml -i inventory.ini
deleteHLF :
		ansible-playbook ./playbook/hyperledger/playbook.deleteHLFNetwork.yml -i inventory.ini
ping:
		ansible -m ping all -i inventory.ini
down:
		ansible-playbook ./playbook/k8s/playbook.down.yml -i inventory.ini
mount:
		ansible-playbook playbook/setup/playbook.mount.yml -i inventory.ini
installImage:
		ansible-playbook playbook/setup/playbook.image.install.yml -i inventory.ini
removeImage:
		ansible-playbook playbook/setup/playbook.image.remove.yml -i inventory.ini
