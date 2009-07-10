# auto-apt

I got sick and tired of aptitude installing things, and then realizing I needed something else, killing aptitude, adding it to the command line, etc, etc. I wanted to just be able to kick it off and not worry about.

auto-apt consists of a daemon and command line app. The daemon watches ~/.auto-apt for new files, which consist of a command to aptitude, such as 'install kcachegrind'. The command line app just sends it arguments to new files. Happiness ensues.

# Installation

        git clone git://github.com/darkhelmet/auto-apt.git
        put auto-apt-daemon.rb and auto-apt.rb somewhere in your path

# Usage

        auto-apt-daemon.rb start
        auto-apt.rb install something
        auto-apt.rb purge something
        auto-apt.rb uninstall something

# License

See "LICENSE" file
