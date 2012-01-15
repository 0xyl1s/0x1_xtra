# encoding: utf-8
# tested with ruby 1.9.3

ec1_lib_path = File.join(File.expand_path('~'), '.ec1/00mu/00sourcing/ec1_lib')

# loading ec1 standard lib
require_relative "#{ec1_lib_path}/ec1/lib/toolkit/standard.rb"
include Ec1::Lib::Toolkit::Standard


# ____________________________________________________________________
# >>>>>  projet epiculture/ec1   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{{{
# Sources, Infos & Contact : http://www.epiculture.org
# Author: Pierre-Maël Crétinon
# License: GNU GPLv3 ( www.epiculture.org/ec1/LICENSE )
# Copyright: 2010-2012 Pierre-Maël Crétinon
# Sponsor: studio Helianova - http://studio.helianova.com
# ――――――――――――――――――――――――――――――――――――――#}}}
# vim: ft=ruby
