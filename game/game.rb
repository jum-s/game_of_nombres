require "csv"

REGEX_NUMBERS = /dix|vingt|trente|quarante|cinquante|soixante|cent|mille/

class Game
  attr_reader :exercices, :clip

  def initialize args
    @limit = args['limit'] || 20
    @exercices = Array.new
  end

  def start!
    @exercices = pick_exercices
  end

  def pick_exercices
    parsed_file.keep_if do |line|
      line[2].match? REGEX_NUMBERS
    end
    .shuffle[0..@limit]
  end

  def parsed_file
    catalog_path = File.dirname(__FILE__) + '/public/data/validated.tsv'
    CSV.read(catalog_path, { :col_sep => "\t" })
  end
end
