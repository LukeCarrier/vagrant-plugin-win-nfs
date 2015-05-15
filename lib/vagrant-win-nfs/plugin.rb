#
# NFS client support for Windows in Vagrant
#
# @author Luke Carrier <luke@carrier.im>
# @copyright 2015 Luke Carrier
# @licence GPL v3
#

module VagrantPlugins
    module WinNfs
        class Plugin < Vagrant.plugin(2)
            name "NFS client support for Windows in Vagrant"

            guest_capability("windows", "mount_nfs_folder") do
                MountNfsFolder
            end
        end

        class MountNfsFolder
            def self.mount_nfs_folder(machine, ip, folders)
                folders.each do |name, opts|
                    # Windows is retarded and only allows us to mount NFS shares
                    # to drive letters, even though local volumes can be nested.
                    # This means there's absolutely zero benefit to us
                    # performing path expansion.

                    mount_command = "mount #{ip}:#{opts[:hostpath]} #{opts[:guestpath]}"
                    machine.communicate.sudo(mount_command)
                end
            end
        end
    end
end
