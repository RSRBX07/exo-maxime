
number_name = (8..12).to_a.sample
grid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
name_rar_file = ""
password = ""


number_name.times {
  rd = rand(grid.size)
  name_rar_file = name_rar_file << grid[rd]
}

system("rar a -hp#{password} #{name_rar_file} /home/vrok/Téléchargements/captvty-2.5.3-autoextract.exe")


