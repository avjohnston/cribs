
require './lib/room'

class House
  attr_reader :price,
              :address

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @area = area
  end

  def rooms
    @rooms
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    return true if @price.scan(/[0-9]/).join.to_i > 500000
    false
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    @rooms.sum { |room| room.area }
  end

  def details
    details_hash = {
      :price => '',
      :address => ''
    }
    hash.map do |price, address|
      hash[:price] = @price
      hash[:address] = @address
    end
  end

  def price_per_square_foot
    (@price.scan(/[.0-9]/).join.to_f / area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.map do |room|
      rooms.sort
    end
  end

  def rooms_by_category

  end
end
