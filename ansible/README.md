## Requerimientos

Con direnv se creará un pyenv, y luego correr:

```
pip install -r requirements.txt
ansible-galaxy install -fr requirements.yml && \
ansible-galaxy collection install -fr requirements.yml
```
