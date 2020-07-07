.PHONY: setup

setup:
	ansible-playbook -i hosts playbooks/setup.yml

caddy:
	ansible-playbook -i hosts playbooks/caddy.yml

jobs:
	ansible-playbook -i hosts playbooks/jobs.yml

votelocal:
	ansible-playbook -i hosts playbooks/votelocal.yml