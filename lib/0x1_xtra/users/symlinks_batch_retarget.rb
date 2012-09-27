# encoding: utf-8
# tested with ruby 1.9.3
# 0x1test>> ../../../test/0x1/users/test_symlinks_batch_retarget.rb

module X module Xtra module Users
  require_relative '../0x1_lib.helper.rb'

  class SymlinksBatchRetarget
    include X::Lib::Toolkit::Standard

    def initialize(a_argv)
      @x_lib_path_base = X_LIB_PATH_BASE
      x__lib_load_modules([:standard])
      @usage_path_rel = '../../../data/0x1/users/symlinks_batch_retarget_usage'
      arguments_process(a_argv)
      puts 'ok'
    end

    def run()
      files_list_raw = x__dir_list_recursive_raw(basedir)
      symlink_list = x__files_list_filtered(files_list_raw, [:symbolic_links])
      symlink_list.each do |symlink|
        print "#{symlink} >>>> "
        puts x__symlink_target(symlink).gsub(%r<ec1_system_livelinks>, '0x1gen_system_livelinks')
      end
    end

    private

    def usage()
      usage_path_abs = x__rel_abs_path(__FILE__, @usage_path_rel)
      x__file_read(usage_path_abs)
    end

    def arguments_process(a_args)
      if (a_args.join == 'help') or not (a_args.size == 3)
        usage()
        exit 1
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
