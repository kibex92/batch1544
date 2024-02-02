# What’s the SQL query to get books written before 1985?
SELECT title FROM books WHERE year < 1985;
SELECT * FROM books WHERE publishing_year 1985;
# What’s the SQL query to get the 3 most recent books written by Jules Verne?
SELECT * FROM books
JOIN authors
ON authors.id = books.author_id
WHERE authors.name = "Jules Verne"
ORDER BY books.publishing_year DESC
LIMIT 3

# Complete the following migrations to create your e-library database.
class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.timestamps
    end
  end
end


# Complete the following migrations to create your e-library database.
class CreateBooks < ActiveRecord::Migration[7.0]
 def change
   create_table :books do |t|
    t.string :title
    t.integer :publishing_year
    t.timestamps
    t.references :author, foreign_key: true
   end
 end
end

# Complete the following migrations to create your e-library database.
class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.timestamps

    end
  end
end

# Complete the following migrations to create your e-library database.
class CreateReadings < ActiveRecord::Migration[7.0]
  def change
    create_table :readings do |t|
      t.date :date
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

# Write a migration to add a category column to the books table.
class AddCategoryToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :category, :string
  end
end

# Define each Active Record model with its associations for your database.
class Author
  has_many :books
end

class Book
  belongs_to :author
  has_many :readings
  has_many :users, through: :readings
end

class User
  has_many :readings
  has_many :books, through: :readings
end

class Reading
  belongs_to :book
  belongs_to :user
end

# Complete the following code using the relevant Active Record methods.

#1. Add your favorite author to the DB
shakespeare = Author.new(name: "Shakespeare")
shakespeare.save
#2. Get all authors
Author.all
#3. Get author with id=8
Author.find_by(id: 8)
Author.find(8)
#4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by(name: "Jules Verne")
Author.find_by_name("Jules Verne")

#5. Get Jules Verne's books
jules.books
#6. Create a new book "20000 Leagues under the Seas". Store it in a variable: twenty_thousand
twenty_thousand = Book.new(title: "20000 Leagues under the Seas")
#7. Add Jules Verne as this book's author
twenty_thousand.author = jules
#8. Now save this book in the DB!
twenty_thousand.save

# Add validations of your choice to the Author class.
class Author
  validates :name, presence: true
end


