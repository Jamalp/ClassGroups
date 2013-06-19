students = ["Alan Appelstein",
            "Alice Mottola",
            "Alina Guzman",
            "Andrew silbersmith",
            "Anuj Jhunjhunwala",
            "Ben Israeli",
            "Beryl Schragger",
            "Christine Coulter",
            "Christopher Huyett",
            "Christopher Wright",
            "Corbin Sykes",
            "Eleyna Whittingham",
            "Eric Gong",
            "Jamal Powell",
            "Jason Darcy",
            "Kevon Cheung",
            "Mike Mayer",
            "Mike Vanger",
            "Nick Lombardi",
            "Teddy Cleveland",
            "Thomas Yu",
            "Tim Blonski",
            "Tom Brennan",
            "Tricia Dougals",
            "Wesley Carr",
            "Zacharia Reitano"]


puts "What size groups would you like?"
group_size = gets.chomp.to_i

student_groups = []
students.shuffle!

while students.length > group_size
  student_groups.push(students.slice!(0,group_size))
end

final_group = student_groups[student_groups.length-1]
final_group.push(students)
final_group.flatten

student_groups.each_with_index do |group, i|
  puts "Group #{i+1}:"
  puts group
  puts ""
end