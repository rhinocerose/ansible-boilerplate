all: provision 

provision: galaxy
  ansible-playbook -i hosts  --vault-password-file ~/.vault-pass playbooks/provision.yml --tags "provision" -v 
  
galaxy:
	ansible-galaxy install -r requirements.yml --force
