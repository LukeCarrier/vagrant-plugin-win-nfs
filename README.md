# NFS client support for Windows in Vagrant

Adds support for Microsofts "Services for NFS" client to Vagrant's synced
folder system.

* * *

## Abandoned

I began this project with the goal of getting the NFS client in Server 2008 R2
and above able to connect to recent versions of NFS on Linux hosts.
Unfortunately, the lack of a simple file-based approach to user mapping and
NFSv4 support in Microsoft's NFS client has left me unable to deliver.

I'm now working to bring SMB host support to Vagrant on Linux via the
[Samba for Vagrant on Linux](https://github.com/LukeCarrier/vagrant-plugin-linux-smb)
project.

## Hacking

1. Execute ```sudo yum-builddep ruby``` or your platform's equivalent to install
   common build requirements for Ruby extensions
2. Execute ```bundle``` to make sure everything's all good
3. I don't know what else yet
