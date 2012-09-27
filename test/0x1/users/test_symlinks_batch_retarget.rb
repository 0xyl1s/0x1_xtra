# encoding: utf-8
# tested with ruby 1.9.3

module X module Users
  require 'minitest/autorun'

  class TestSymlinksBatchRetarget < MiniTest::Unit::TestCase
    require_relative '../../../lib/0x1/users/symlinks_batch_retarget.rb'

    def setup
      x__load_modules([:standard])
    end

    def test_display_usage_if_arg_help
      #capture = @symlinks_batch_retarget = SymlinksBatchRetarget.new(%W[help])
      capture = 'gen'
      help = 'eral'
      assert_equal capture, help
    end

  end

end end

# >>>>>  projet epiculture/ec1   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{{{
# Sources, Infos & Contact : http://www.epiculture.org
# Author: Pierre-Maël Crétinon
# License: GNU GPLv3 ( www.epiculture.org/ec1/LICENSE )
# Copyright: 2010-2012 Pierre-Maël Crétinon
# Sponsor: studio Helianova - http://studio.helianova.com
# ――――――――――――――――――――――――――――――――――――――#}}}
#vim: ft=ruby
