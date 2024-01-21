# 🌐 Secure File Transfer and Cleanup Script 🚀

A bash script for securely transferring files to a remote server via SCP, generating a shareable URL, and automatically cleaning up the server after a specified duration.

NOTE: I might have some small errors in Bash scripting since I'm new to it. If you think the code could work more effectively, please update it. I would be happy to apply your updates.

## Prerequisites

- [Expect](https://linux.die.net/man/1/expect) 🧑‍💻
- [xclip](https://github.com/astrand/xclip) 📋
- [Screenshot Tool 📷](https://github.com/OttoAllmendinger/gnome-shell-screenshot/)
- SSH access to the remote server with password authentication 🔑

## Usage 🚀

To use this script with the Screenshot Tool 📷, follow these steps:

    Navigate to the Screenshot Tool settings:

    🌐 Open the settings of the Screenshot extension mentioned in the prerequisites.

    Configure the 'Run Command After Capture' option:

    🧑‍💻 In the Commands section, enable the 'Run Command After Capture' option.

    📋 Enter the following command in the command field:

```bash
./script.sh {f}
```

Verify Storage Settings:

🔑 Ensure that the top option in the Storage section is selected.

[OPTIONAL] Customize Shortcuts:

📷 Optionally, you can make changes to the shortcuts as desired.

Edit the downloaded script:

    Replace the placeholder 'type_your_server_password_here' with your server password.
    Adjust the 'sunucu_bilgisi="user@server_adress:/path/to/save"' part as needed.
    Modify the 'dosya_url="https://domain.com/$dosya_adi"' part accordingly.
    Edit the 'sleep 60' part to your preferred duration.
    Modify the 'spawn ssh user@server_adress "rm /path/to/file/$dosya_adi"' part as necessary.

You're ready to go!

🚀 Capture screenshots with the Screenshot Tool, and the script will securely transfer them to the remote server, generate a shareable URL, and automatically clean up the server after the specified duration. Happy capturing! 📤

