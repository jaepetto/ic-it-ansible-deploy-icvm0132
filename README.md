# cdhvm0030.xaas.epfl.ch automated deployment

This repository contains the Ansible playbooks used to deploy the icvm0132.xaas.epfl.ch server.

## Setup

### Python version

Make sure you are using the python version indicated into the `.tool-versions` file.

### Virtual environment

Create a virtual environment and install the required packages:

```bash
$ python -m venv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
```

Activate the virtual environment:

```bash
$ source venv/bin/activate
```

### Ansible dependencies

Install the required Ansible roles:

```bash
$ ansible-galaxy install -r requirements.yml
```

## Usage

### Deploy

Deploy the server:

```bash
$ ansible-playbook -i inventory/prod playbook.yml
```
