source "https://rubygems.org"

gemspec

group :development do
    # This really shouldn't be required as it's distributed as part of Ruby, but
    # it's possible that Vagrant makes changes to the environment that result in
    # it no longer appearing on our path.
    gem "json"

    gem "vagrant", git: "https://github.com/mitchellh/vagrant.git"
end

group :plugins do
    gem "vagrant-win-nfs", path: "."
end
