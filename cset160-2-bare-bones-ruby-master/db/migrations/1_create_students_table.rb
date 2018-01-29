require "sqlite3"

db = SQLite3::Database.new "./db/dev.db"

db.execute "
  create table students (
    id INTEGER PRIMARY KEY ASC,
    name VARCHAR(255),
    email VARCHAR(255),
    rate VARCHAR(255)
  );
"

students = [
  ["Davian Perez-Silva", "dsperezsilva171@stevenscollege.edu", "Student"],
]

students.each do |student|
  db.execute(
    "INSERT INTO students (name, email, rate) VALUES (?, ?, ?)", student
  )
end
