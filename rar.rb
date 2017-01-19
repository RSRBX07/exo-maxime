#!/usr/share/rvm/rubies/ruby-2.4.0/bin/ruby
number_name = (8..12).to_a.sample
grid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
name_rar_file = ""
password = "your_password"


number_name.times {
  rd = rand(grid.size)
  name_rar_file = name_rar_file << grid[rd]
}

system("rar a -hp#{password} #{name_rar_file} -ed #{ARGV[0]}")



