
require 'pry'

class Song
attr_accessor :name, :artist

		def initialize(name)

			@name = name

		end

		def self.new_by_filename(file_name)
#binding.pry
			parsed_file = file_name.split(" - ")
			song_from_file = parsed_file[1]
			name_from_file = parsed_file[0]

			song = self.new(song_from_file)
			#binding.pry
			song.artist_name = (name_from_file)
			#binding.pry
			song
			#binding.pry
		end

		def artist_name=(name)
			#binding.pry


			artist = Artist.find_or_create_by_name(name)
			#binding.pry
			self.artist = artist
			artist.add_song(self)
            #binding.pry
		end






end