# encoding: utf-8
# tested with ruby 1.9.3

module X module Users module Utils

class Editor
require '0x1/lib/toolkit/standard.rb'
include X::Lib::Toolkit::Standard

def initialize
  @x_user_editor=x__file_read(File.expand_path'~/.0x1/00mu/00data/editor').chomp
end

def edit(e_file=nil)
  print "editing #{e_file} : "
  if x__is_a_file?("#{e_file}.0x1microsynched")
    puts "ABORTED (#{e_file} is microsynched => #{e_file}.0x1microsynched)"
  else
    system "#{@x_user_editor} #{e_file}"
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
