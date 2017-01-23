#!/usr/share/rvm/rubies/ruby-2.4.0/bin/ruby
require 'rar'

number_name = (8..12).to_a.sample
grid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
name_rar_file = ""
password = "your_password"


number_name.times {
  rd = rand(grid.size)
  name_rar_file = name_rar_file << grid[rd]
}


archive = RAR::Archive.new name_rar_file,exclude_path: "",password: password
dirname = ARGV[0].split(/\//)
dirname = dirname[dirname.size - 1]
puts dirname
archive.add_file "#{dirname}"
puts archive
#archive.create!


