## 🛡️ keep-awake.sh

A lightweight bash script to prevent screen lock and system suspension during long-running background tasks. 

**Use cases:**
* Preventing network drops during large Docker builds or container orchestration.
* Keeping the session active during long database dumps or migrations.
* Maintaining active SSH connections without modifying global system configs.

**How it works:**
It uses `xdotool` to send a microscopic (1 pixel) relative mouse movement periodically. This seamlessly resets the display manager's idle timer without interfering with the developer's workflow.

---

### ⚙️ Installation & Usage

1. **Clone the repository:**
   `git clone https://github.com/Albembo/linux-dev-toolbox.git`
   `cd linux-dev-toolbox`

2. **Make the script executable:**
   Before running it for the first time, you need to grant execution permissions:
   `chmod +x keep-awake.sh`

3. **Run from terminal:**
   `./keep-awake.sh`
   *(Press `Ctrl+C` in the terminal to stop the script when your background tasks are complete.)*

---

### ⌨️ Keyboard Shortcut Setup (GNOME)

For a seamless workflow, you can bind this script to a global keyboard shortcut so you don't need to keep a terminal window open.

1. Open your system **Settings**.
2. Navigate to **Keyboard** > **Keyboard Shortcuts** > **View and Customize Shortcuts** > **Custom Shortcuts**.
3. Click the **+** (Add) button.
4. Fill in the details:
   * **Name:** `Toggle Keep Awake`
   * **Command:** `/absolute/path/to/your/linux-dev-toolbox/keep-awake.sh` *(Make sure to replace this with your actual absolute path)*
   * **Shortcut:** Set your preferred combination (e.g., `Super + Alt + P`).
5. Click **Add**.

Now you can toggle your keep-awake mechanism instantly right from your keyboard!

## 🚀 Automated Environment Provisioning (Ansible)

The `ansible/` directory contains playbooks to automate the setup of a fully-fledged backend development environment.

**What it installs:**
* **Go & Python:** Runtimes for high-performance backends and scripting.
* **NVM (Node Version Manager):** For managing isolated Node.js environments.
* **Portainer:** A lightweight management UI for Docker containers and local stacks.