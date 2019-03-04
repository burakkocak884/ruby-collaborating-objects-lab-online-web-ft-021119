

require 'pry'
class MP3Importer
attr_accessor :path
		@@files = []
		def initialize(path)
			@path = path
			#binding.pry
		end

		def files

     		@@files = Dir.entries(@path).select {|file| !File.directory? file}
			#binding.pry
		end


		def import
			
			@@files.each do |file|
			Song.new_by_filename(file)

		end
		#binding.pry

		end


end