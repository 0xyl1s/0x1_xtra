# encoding: utf-8
# tested with ruby 1.9.3

module X module Users
  require_relative '../0x1_lib.helper.rb'

  class SymlinksBatchRetarget

    def initialize(basedir, s_search_regex, s_replace_regex)
      x__load_modules([:standard])
      unless x__is_a_dir?(basedir)
        abort "E: basedir is not a dir (#{basedir})"
      end
      files_list_raw = x__dir_list_recursive_raw(basedir)
      symlink_list = x__files_list_filtered(files_list_raw, [:symbolic_links])
      symlink_list.each do |symlink|
        print "#{symlink} >>>> "
        puts x__symlink_target(symlink).gsub(%r<ec1_system_livelinks>, '0x1gen_system_livelinks')
      end
    end

    private

    def usage()
      usage_path_rel = 'TODO'
      usage_path_abs = x__rel_abs_path(__FILE__, usage_path_rel)
      x__file_read(usage_path_abs)
    end

    def arguments_process(a_args)
      if (a_args.join == 'help') or not (a_args.size == 3)
        abort usage()
      end
    end

    def run()
      files_list_raw = x__dir_list_recursive_raw(basedir)
      symlink_list = x__files_list_filtered(files_list_raw, [:symbolic_links])
      symlink_list.each do |symlink|
        print "#{symlink} >>>> "
        puts x__symlink_target(symlink).gsub(%r<ec1_system_livelinks>, '0x1gen_system_livelinks')
      end
    end

  end

end end


# ____________________________________________________________________
# >>>>>  projet epiculture/ec1   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{{{
# Sources, Infos & Contact : http://www.epiculture.org
# Author: Pierre-Maël Crétinon
# License: GNU GPLv3 ( www.epiculture.org/ec1/LICENSE )
# Copyright: 2010-2012 Pierre-Maël Crétinon
# Sponsor: studio Helianova - http://studio.helianova.com
# ――――――――――――――――――――――――――――――――――――――#}}}
# vim: ft=ruby
