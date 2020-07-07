class Functions
  def aged_brie(item)
    if item.quality < 50
      item.quality += 1
      if item.name == 'Backstage passes to a TAFKAL80ETC concert' && item.sell_in <= 10
        backstage(item)
      end
    end
  end

  def backstage(item)
    if item.quality.positive?
      if item.quality < 50
        item.quality += 1
      elsif item.sell_in <= 5
        item.quality += 1
      end
    else
      item.quality = 0
    end
  end

  def sulfuras(item)
    if item.name == 'Sulfuras, Hand of Ragnaros'
      item.quality = 80
    else
      conjured(item)
    end
  end

  def conjured(item)
    if item.name == 'Conjured'
      item.quality -= 2
    else
      normal(item)
    end
  end

  def normal(item)
    unless item.quality > 50
      if item.quality.positive?
        if item.sell_in <= 0
          item.quality -= 2
        else
          item.quality -= 1
        end
      end
    end
  end
end
