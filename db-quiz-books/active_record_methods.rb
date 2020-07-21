# 1. Add your favorite author to the DB

yuzuki = Author.new(name: 'Yuzuki')
yuzuki.save
# Author.create(name: 'Yuzuki')

# DON'Ts:
# ❌ Author.new(name = 'Yuzuki')
# ❌ Author.new(:name = 'Yuzuki')

# 2. Get all authors
Author.all

# DON'Ts:
# ❌ author.all
# ❌ Authors.all

# 3. Get author with id=8
Author.find(8)

# DON'Ts:
# ❌ Author.where(id: 8) # => [instance of author]
# ❌ Author.find_by(id: 8)
# ❌ Author.find_by_id(8)

# 4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by(name: 'Jules Verne')

# jules = Author.find_by('name = ?', "Jules Verne")

# 5. Get Jules Verne's books
jules.books

# DON'Ts:
# ❌ jules.books.all

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand
twenty_thousand = Book.new(title: "20000 Leagues under the Seas")

# 7. Add Jules Verne as this book's author
twenty_thousand.author = jules
# ❌ twenty_thousand.author = "Jules Verne"
# ❌ twenty_thousand.author_id = jules.id
# ❌ twenty_thousand.author.name = "Jules Verne"

# 8. Now save this book in the DB!
twenty_thousand.save
