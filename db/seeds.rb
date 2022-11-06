department_name = ["Ror", "python", "react js", "angular js", "devops", "backend", "Ba", "html", "css", "java"] 
manager_name = ["Sanjay", "vijay", "rohan", "mehul", "hiren", "mayur shah", "vishal", "mayank", "ronak", "karan"] 
email_name = ["Sanjay@gmail.com", "vijay@gmail.com", "rohan@gmail.com", "mehul@gmail.com", "hiren@gmail.com", "mayurshah@gmail.com", "vishal@gmail.com", "mayank@gmail.com", "ronak@gmail.com", "karan@gmail.com"] 
employee_first_name = ["Sanjay", "hiren", "rohan", "mehul", "vishal", "mayur", "mayur", "mayank", "shubham", "rutani", "Neetesh", "dhruv"] 
employee_last_name = ["vinzuda", "dhaduk", "kotecha", "pandya", "tank", "shah", "chhapra", "agarwal", "rajput", "rutani", "gupta", "mehta"] 
employee_email_name = ["Sanjay@gmail.com", "hiren@gmail.com", "rohan@gmail.com", "mehul@gmail.com", "vishal@gmail.com", "mayurshah@gmail.com", "mayurchapra@gmail.com", "mayank@gmail.com", "shubham@gmail.com", "rutani@gmail.com", "neetesh@gmail.com", "dhruvmehta@gmail.com"] 



10.times do |i|
  Department.create!(
    name: department_name[i]
  )
  puts "department created #{i}"
  Manager.create!(name: manager_name[i],email: email_name[i],contact: Faker::Number.number(digits: 10), department_id: i+1 )
  puts "manager created #{i}"
  2.times do |i|
    Project.create!(
      project_name: Faker::Name.name,
      Budget: Faker::Number.decimal(l_digits: 7), 
      manager_id: i+1
    )
  end
end

#To create employee dummy data
12.times do |i|
  Employee.create!(
    first_name: employee_first_name[i],
    last_name: employee_last_name[i],
    email: employee_email_name[i],
    phone_number: Faker::Number.number(digits: 10),
    hire_date: Faker::Date.in_date_period,
    job_id: Faker::Number.digit,
    salary: Faker::Number.decimal(l_digits: 5, r_digits: 2)
  )
  puts "Employee created #{i}"
end
## seeding through faker gem
  # 10.times do |i|
  #   Department.create!(
  #     name: Faker::Name.name   
  #   )
  #   puts "department created #{i}"
  #   Manager.create!(
  #     name: Faker::Name.name,
  #     email: Faker::Internet.email(domain: 'gmail'),
  #     contact: Faker::Number.number(digits: 10),
  #     department_id: i+1
  #     )
  #   puts "manager created #{i}"
  # end
