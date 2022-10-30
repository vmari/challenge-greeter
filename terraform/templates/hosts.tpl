all:
  vars:
    ansible_user: ubuntu
  hosts:
    localhost:
      ansible_connection: local
      # Needed because of python virtualenv
      ansible_python_interpreter: $VIRTUAL_ENV/bin/python
    deploy:
      ansible_host: ${instance_address}
