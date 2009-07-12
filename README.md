# apt-runner

I got sick and tired of aptitude installing things, and then realizing I needed something else, killing aptitude, adding it to the command line, etc, etc. I wanted to just be able to kick it off and not worry about.

auto-apt consists of a daemon and command line app. The daemon watches ~/.auto-apt for new files, which consist of a command to aptitude, such as 'install kcachegrind'. The command line app just sends it arguments to new files. Happiness ensues.

FileSystemWatcher files came from http://paulhorman.com/filesystemwatcher/

# Installation

First you need to enable NOPASSWD for the aptitude binary. Google around for how to do that.

        git clone git://github.com/darkhelmet/apt-runner.git
        put apt-runner-daemon.rb and apt-runner.rb somewhere in your path

# Usage

        apt-runner-daemon.rb start
        apt-runner.rb install something
        apt-runner.rb purge something
        apt-runner.rb uninstall something

# License

See "LICENSE" file
