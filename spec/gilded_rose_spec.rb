require 'rspec'
# => require 'test/unit/assertions'
require_relative '../app/gilded_rose.rb'
itmes_test = [
  Item.new('foo', 2, 8),
  Item.new('faa', -2, 0),
  Item.new('Aged Brie', 10, 10),
  Item.new('Aged Brie', 5, 50),
  Item.new('Sulfuras, Hand of Ragnaros', 0, 80),
  Item.new('Sulfuras, Hand of Ragnaros', -1, 80),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 15, 20),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 4, 45),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 0, 49),
  Item.new('Conjured', 6, 4)
]
normal = [itmes_test[0], itmes_test[1]]
aged_brie = [itmes_test[2], itmes_test[3]]
sulfuras = [itmes_test[4], itmes_test[5]]
backstage = [itmes_test[6]]
backstage_two = [itmes_test[7]]
backstage_third = [itmes_test[8]]
conjured = [itmes_test[9]]

describe GildedRose do
  describe '#update_quality' do
    it 'Expiry date expired and angy brie' do
      expect(verify_proof(normal)).to eq('foo, 1, 7, faa, -3, 0, ')
    end
    it 'Aged Brie' do
      expect(verify_proof(aged_brie)).to eq('Aged Brie, 9, 11, Aged Brie, 4, 50, ')
    end
    it 'Sulfuras' do
      expect(verify_proof(sulfuras)).to eq('Sulfuras, Hand of Ragnaros, -1, 80, Sulfuras, Hand of Ragnaros, -2, 80, ')
    end
    it 'Backstage passes' do
      expect(verify_proof(backstage)).to eq('Backstage passes to a TAFKAL80ETC concert, 14, 21, ')
    end
    it 'Backstage passes 2' do
      expect(verify_proof(backstage_two)).to eq('Backstage passes to a TAFKAL80ETC concert, 3, 48, ')
    end
    it 'Backstage passes 3' do
      expect(verify_proof(backstage_third)).to eq('Backstage passes to a TAFKAL80ETC concert, -1, 0, ')
    end
    it 'Conjured' do
      expect(verify_proof(conjured)).to eq('Conjured, 5, 2, ')
    end
  end
end

def verify_proof(test_items)
  items = GildedRose.new(test_items)
  string_items = ''
  items.update_quality
  items.items.each { |item| string_items += item.to_s + ', ' }
  string_items
end
