require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


### Exercise 6: One-to-many association

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.
@store5 = Store.find(5)
@store6 = Store.find(6)


@store1.employees.create(first_name: "K", last_name: "GG", hourly_rate: 55)
@store1.employees.create(first_name: "B", last_name: "Bause", hourly_rate: 34)
@store5.employees.create(first_name: "A", last_name: "RonRon", hourly_rate: 21)
@store5.employees.create(first_name: "G", last_name: "Top", hourly_rate: 51)
@store6.employees.create(first_name: "M", last_name: "Cdiks", hourly_rate: 66)
@store6.employees.create(first_name: "T", last_name: "Rex", hourly_rate: 23)