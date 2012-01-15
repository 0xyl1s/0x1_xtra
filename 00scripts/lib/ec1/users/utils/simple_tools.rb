# encoding: utf-8
# tested with ruby 1.9.3

module Ec1 module Users module Utils
require_relative '../../ec1_lib.helper.rb'

class RandomString

def initialize(i_length_raw=nil, b_lowercase=false)
  if i_length_raw.nil? or e__is_a_blank_string?(i_length_raw)
    i_length = 13
  elsif e__is_an_integer?(i_length_raw)
    i_length = i_length_raw
  elsif e__string_contain_only_numbers?(i_length_raw)
    i_length = i_length_raw.to_i
  else
    abort "ERROR: provided i_length #{i_length_raw} is: #{i_length_raw.class}, must be either blank (default to 13), an integer, or a string containing only numbers"
  end
  print e__random_string(i_length, b_lowercase)
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
