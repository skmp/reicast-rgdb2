# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.transaction do
	@data = JSON.parse(File.read(Rails.root.join('db/games.json')))

    puts "Seeding: Games..."
    Game.destroy_all

    @data.each do |datum|
    	item = Game.new(name: datum["name"],title: datum["title"])
    	item.save
    end

	puts "Done."


	#"type":"GD-ROM","hash":"kanon-nohash-48e7e7fb7c556849b366d765220e077e4e798e45103a9aaf0ce7c1ad40de99ce","fingerprint":"F1D8 GD-ROM1/1","region":"jp","version":"1.005","seq_num":"1","seq_count":"1"}

	@data = JSON.parse(File.read(Rails.root.join('db/discs.json')))


	puts "Seeding: Discs..."
    Disc.destroy_all

	#"fingerprint":"F1D8 GD-ROM1/1","region":"jp","version":"1.005","seq_num":"1","seq_count"
    @data.each do |datum|
    	item = Disc.new( format: datum["type"], disc_hash: datum["hash"], 
    					 fingerprint: datum["fingerprint"], region: datum["region"],
    					 version: datum["version"], seq_num: datum["seq_num"],
    					 seq_count: datum["seq_count"])

    	game_name = datum["hash"].split('-')[0..-3].join('-');

    	Game.find_by_name(game_name).discs << item;

    	item.save
    end

	puts "Done."

	#{"type":"introrun100","disc":"...","youtube_id":"...","build":"...","hardware":"..."}

	@data = JSON.parse(File.read(Rails.root.join('db/videos.json')))


	puts "Seeding: Videos..."
    Video.destroy_all

    @data.each do |datum|
    	item = Video.new( video_type: datum["type"], youtube_id: datum["youtube_id"],
    					  build: datum["build"], hardware: datum["hardware"] )

    	Disc.find_by_disc_hash(datum["disc"]).videos << item;

    	item.save
    end

	puts "Done."
end