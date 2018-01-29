require "sqlite3"

db = SQLite3::Database.new "./db/dev.db"

db.execute "
  create table students (
    id INTEGER PRIMARY KEY ASC,
    name VARCHAR(255),
    rate VARCHAR(255)
  );
"
headphones = [
  ["Bose", "4.7/5"],
  ["SkullCandy", "4.4/5"],
  ["Beats", "4.1/5"],
  ["Apple", "4.1/5"],
  ["HMDX", "4.0/5"],
  ["JBL", "4.0/5"]
]

headphones.each do |student|
  db.execute(
    "INSERT INTO students (name, rate) VALUES (?, ?)", headphones
  )
end
