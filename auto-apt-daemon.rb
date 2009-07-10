#!/usr/bin/env ruby

%w(rubygems daemons file_system_watcher syslog_logger).each { |lib| require lib }

DIRECTORY = File.expand_path(File.join('~','.auto-apt'))
LOGGER = SyslogLogger.new('auto-apt-daemon')
Daemons.run_proc('auto-apt') do
  w = FileSystemWatcher.new(DIRECTORY)
  w.sleepTime = 3
  w.start do |status,file|
    if FileSystemWatcher::CREATED == status
      cmd = "echo yes | sudo aptitude -y #{File.read(file)}"
      LOGGER.info("running '#{cmd}'")
      LOGGER.info(`#{cmd}`)
      File.delete(file)
    end
  end
  w.join
end
