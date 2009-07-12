#!/usr/bin/env ruby

require 'rubygems'

abort('invalid argument given') unless ARGV.length > 1

dir = File.expand_path(File.join('~','.apt-runner'))
File.open(File.join(dir,Time.now.to_i.to_s), 'w') { |f| f.write(ARGV.join(' ')) }
