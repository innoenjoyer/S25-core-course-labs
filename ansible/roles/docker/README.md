# Docker Role

This role installs and configures Docker and Docker Compose.

## Requirements

- Ansible 2.9+
- Ubuntu 22.04

## Role Variables

- `docker_version`: The version of Docker to install (default: `5:27.5.1-1~ubuntu.24.04~noble`).
- `docker_compose_version`: The version of Docker Compose to install (default: `2.32.1`).

## Example Playbook

```yaml
- hosts: all
  become: yes
  roles:
    - docker
