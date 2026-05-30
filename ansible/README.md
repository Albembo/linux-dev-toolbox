# 🛠️ Environment Provisioning

This folder contains an Ansible playbook to automatically set up a local backend development environment.

## Prerequisites
You need to have Ansible installed on your machine.

<pre><code>sudo apt update
sudo apt install ansible -y</code></pre>

## How to run
Navigate to this directory and run the playbook using the local inventory. It will ask for your `sudo` password to install system packages.

<pre><code>ansible-playbook -i inventory.ini playbook.yml -K</code></pre>

**Note on Docker:** After the script finishes, you might need to log out and log back in (or completely restart your terminal) for the `docker` user group changes to take full effect without requiring `sudo`.

**Portainer Access:**
Once the playbook completes, Portainer will be available at `https://localhost:9443`.