
require_relative 'functions.rb'
class GildedRose
  attr_reader :items
  def initialize(items)
    @items = items
  end

  def update_quality
    function = Functions.new
    @items.each do |item|
      if item.name == "Aged Brie" || item.name == "Backstage passes to a TAFKAL80ETC concert"
        function.aged_brie(item)
      else
        function.sulfuras(item)
      end
      item.sell_in -= 1
    end
  end
end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
