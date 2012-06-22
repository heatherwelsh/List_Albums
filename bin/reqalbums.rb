# this is the main file that allows you to request albums
#!/user/bin/evn
require ("./lib/List_Albums")


$stdout.write("Select a category from below:\n
A) Artist\n
B) Album or Year\n")

input = $stdin.gets.chomp

$stdout.write("Enter one of the options from below:\n")

case input
when "A"
  listing = Artist.new

  $stdout.write("
A) Enter Artist name ie 'Beastie Boys'\n
B) Enter 'All' to list all Artist ")

  search_artits = $stdin.gets.chomp

when "B"
  listing = AlbumsList::Album.new

  $stdout.write("
A) Enter album name for album listing\n
B) Enter album year for a listing of all albums of that year\n
C) Enter 'All' for entire listing of albums: ")
  input = $stdin.gets.chomp

end

listing.listalbum(input)
