# encoding: utf-8
# tested with ruby 1.9.3

x_lib_path = File.join(File.expand_path('~'), '.0x1/00mu/00sourcing/0x1_lib')

# loading 0x1 standard lib
require_relative "#{x_lib_path}/0x1/lib/toolkit/standard.rb"
include X::Lib::Toolkit::Standard


# ____________________________________________________________________
# >>>>>  projet epiculture/ec1   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{{{
# Sources, Infos & Contact : http://www.epiculture.org
# Author: Pierre-Maël Crétinon
# License: GNU GPLv3 ( www.epiculture.org/ec1/LICENSE )
# Copyright: 2010-2012 Pierre-Maël Crétinon
# Sponsor: studio Helianova - http://studio.helianova.com
# ――――――――――――――――――――――――――――――――――――――#}}}
# vim: ft=ruby
