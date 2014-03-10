require './lib/triangle.rb'

def triangle_calc
  puts "Press t if you would like to check new triangle sides"
  puts "Press x if you would like to exit"

  main_choice = gets.chomp
  if main_choice == 't'
    create_triangle
  elsif main_choice == 'x'
    puts "Good-bye"
  else
    puts "Invalid input"
    main_choice
  end
end

def create_triangle
  puts "Please enter the first side of the triangle"
  s1 = gets.chomp.to_i
  puts "Please enter the second side"
  s2 = gets.chomp.to_i
  puts "Please enter the third side"
  s3 = gets.chomp.to_i

  temp_triangle = Triangle.new(s1,s2,s3)
  puts temp_triangle.triangle_love

  triangle_calc
end

triangle_calc
