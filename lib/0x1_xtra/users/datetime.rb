# encoding: utf-8
# tested with ruby 1.9.3

module X module Xtra module Users
  require_relative '../0x1_lib.helper.rb'

  class Datetime
    include X::Lib::Toolkit::Standard

    def initialize
      @x_lib_path_base = X_LIB_PATH_BASE
      x__lib_load_modules([:standard])
      puts x__datetime
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
