require 'sqlite3'

def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  results = db.execute("SELECT COUNT(*) FROM artists")
  # results in an Array (rows) of Array (columns)
  # p results.flatten  # Inspect what you get back! Don't guess!
  # Then you'll need to return something.
  results.flatten[0]
end
def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  results = db.execute("SELECT COUNT(*) FROM #{table_name}")
  results.flatten[0]
end
def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  results = db.execute("SELECT name FROM artists ORDER BY name")
  results.flatten
end
def love_tracks(db)
  # TODO: return array of love songs' names
  results = db.execute("SELECT name FROM tracks WHERE name LIKE '%love%'")
  results.flatten
end
def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending)
  results = db.execute("SELECT name FROM tracks WHERE tracks.milliseconds >
    #{(min_length * 60_000).to_i} ORDER BY tracks.milliseconds")
  results.flatten
end
db = SQLite3::Database.new("lib/db/jukebox.sqlite")


p artist_count(db)
p number_of_rows(db, "albums")
p sorted_artists(db)
p love_tracks(db)
p long_tracks(db, 3)
