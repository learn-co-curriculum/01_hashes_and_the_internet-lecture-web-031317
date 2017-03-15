require 'open-uri'
require 'json'
require 'pry'

def author_names(book)
  if book["volumeInfo"]["authors"]
    book["volumeInfo"]["authors"].join(" and ")
  else
    "No Author Info Found"
  end
end

def title(book)
  book["volumeInfo"]["title"]
end

def description(book)
  book["volumeInfo"]["description"]
end

def display_book(book)
  puts "--------------------------------------------"
  puts "#{title(book)} by #{author_names(book)}"
  puts "------"
  puts description(book)
end

def display_books(books)
  books.each do |book|
    display_book(book)
  end
end

# Make a request to the Google Books API








# Use the data in that hash to display some information about some books
