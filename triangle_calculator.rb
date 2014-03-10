require './lib/triangle.rb'

@triangle_list = []

def triangle_calc
  puts "\nPress t to inquire of the Almighty Triangle Calculator"
  puts "Press x if you would like to exit"
  puts "Press l to access your list of triangles"

  main_choice = gets.chomp
  if main_choice == 't'
    create_triangle
  elsif main_choice == 'x'
    puts "Good-bye"
  elsif main_choice == 'l'
    triangle_list
  else
    puts "That's selection is invalid. You have displeased me. Please try again."
    triangle_calc
  end
end

def create_triangle
  puts "Enter length of side 1"
  s1 = gets.chomp.to_i
  puts "Enter length of side 2"
  s2 = gets.chomp.to_i
  puts "Enter length of side 3"
  s3 = gets.chomp.to_i

  temp_triangle = Triangle.new(s1,s2,s3)
  puts "\n" + "Almighty Triangle Calculator determines that your triangle type is " + temp_triangle.triangle_love
  @triangle_list << temp_triangle

  triangle_calc
end

def triangle_list
  @triangle_list.each_with_index do |your_triangles, index|
    print "\n" + "Triangle # " + (index + 1).to_s + " is " + your_triangles.triangle_love + " with side lengths of " + your_triangles.side_one.to_s + "," + your_triangles.side_two.to_s + "," + your_triangles.side_three.to_s + "\n"
  end
  "\n"
  triangle_calc
end

triangle_calc
