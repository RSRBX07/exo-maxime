def dice
    faces = ["pont", "pont", "igloo", "igloo", "glacon", "glacon"]
    throwing_dice = rand(face.size)
    faces[throwing_dice]
end
