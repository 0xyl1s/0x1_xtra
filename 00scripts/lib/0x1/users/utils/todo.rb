#!/usr/bin/env ruby
# encoding: utf-8
# tested with ruby 1.9.3

module X module Users module Utils
require_relative '../../0x1_lib.helper.rb'

class Todo

def initialize
  x__load_modules([:standard])
  @user_todo_basedir=File.expand_path('~/_/00todo')
  abort "ERROR: can't access user's todo directory (#{@user_todo_basedir})" unless x__is_a_dir?(@user_todo_basedir)
end

def guialarm(message_raw, title_raw='', timeout='15')
  title="EMERGENCY TASK >>>> #{title_raw}"
  message="#{message_raw}\nCompleted Task ?"
  system "zenity --question --text=\'#{message}\' --title=\'#{title}\' --timeout=\'#{timeout}\' --width='731'"
end

def check
  guialarm(@user_todo_content, 'EMERGENCY TASK') unless @user_todo_content.empty?
end

end

class Emergency < Todo

def initialize
  super
  user_todo_file="#{@user_todo_basedir}/emergency"
  abort "ERROR: can't access user's emergency file (#{user_todo_file})" unless x__is_a_file?(user_todo_file)
  @user_todo_content=x__file_read(user_todo_file)
end


end

end end end


# ____________________________________________________________________
# >>>>>  projet epiculture/ec1   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{{{
# Sources, Infos & Contact : http://www.epiculture.org
# Author: Pierre-Maël Crétinon
# License: GNU GPLv3 ( www.epiculture.org/ec1/LICENSE )
# Copyright: 2010-2012 Pierre-Maël Crétinon
# Sponsor: studio Helianova - http://studio.helianova.com
# ――――――――――――――――――――――――――――――――――――――#}}}
# vim: ft=ruby
