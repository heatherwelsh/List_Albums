module AlbumsList
  
  class Albums
    #this class will take an input of Album name
    # or a date and return a list of all albums
    # or a list of albums for given date

    def initialize
      @album = { "Licensed to Ill" => 1986,
        "Paul\'s Boutique" => 1989,
        "Check Your Head" => 1992,
        "Ill Communication" => 1994,
        "Hello Nasty" => 1998,
        "To the 5 Boroughs" => 2004,
        "The Mix-up" => 2007,
        "Hot Sauce Committee Part Two" => 2011}
    end

    def listalbum(input)
      if is_number?(input) == false
        if inpt == "All"
          #loot through the hash and list all albums
          @album.each { |title, year| "#{title}:#{year}"}

        else
          #loot through the hash and list album
          @album.each { |title, year| "#{title}:#{year}" if title == input}
        end

      else
        #loop through the hash and list albums of given date
        @album.each{ |title, year| "#{title}:{input}" if year == input.to_i}
      end
    end
  end
end
