#!/usr/bin/env ruby
# encoding: utf-8
# tested with ruby 1.9.3

module Ec1 module Users module Utils

class Editor
require 'ec1/lib/toolkit/standard.rb'
include Ec1::Lib::Toolkit::Standard

def initialize
  @ec1_user_editor=e__file_read(File.expand_path'~/.ec1/00mu/00data/editor').chomp
end

def edit(e_file=nil)
  print "editing #{e_file} : "
  if e__is_a_file?("#{e_file}.ec1microsynched")
    puts "ABORTED (#{e_file} is microsynched => #{e_file}.ec1microsynched)"
  else
    system "#{@ec1_user_editor} #{e_file}"
    puts "OK"
  end
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
