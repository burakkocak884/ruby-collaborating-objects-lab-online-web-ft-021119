
require 'pry'
class Artist
	


	attr_accessor :name, :songs

 @@all = []

		#binding.pry
		def initialize(name)
			@name = name

		    @songs = []
		    #@@all << self

		   #binding.pry
		end


		def add_song(song)

			@songs << song
    
     		# binding.pry
		 end

		 def save
         	@@all << self
  			
     		#binding.pry
		 end

		 def self.all
		 		@@all

		 end


		 def self.find_or_create_by_name(name)
		 	
   
        if artist =  self.find(name)
        	return artist
       else
       	artist = self.new(name)
       	artist.save
       	return artist
       end






   #      	self.all.find do |artist|
        
   #     	#binding.pry
   #      	if artist.name == name
			# binding.pry
   #     		 return artist

   #      	else 
   #       	 artist = self.new(name)
   #       	# artist.name = name
   #       	artist.save
   #       	binding.pry
   #       	return artist
   #     		end
   #     	  end
       end



       def self.find(name)

       	self.all.find{|artist| artist.name == name}


       end

   #     def add_song(song)

			# @songs << song
    
   #   		# binding.pry
		 # end


       def print_songs
     @songs.each do |each_song|
     	puts each_song.name
     end
       end


		
		



end