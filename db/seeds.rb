Category.destroy_all
Task.destroy_all

puts "Previous records deleted."

3.times do
  my_category = Category.create(title: Faker::Book.genre)
  3.times do
    my_task = Task.new(title: Faker::Book.title,
                      deadline: Faker::Date.forward(23),
                      image: Faker::Avatar.image)
    my_task.category = my_category
    my_task.save
  end
end

puts "#{Category.all.length} cats and #{Task.all.length} tasks generated."
