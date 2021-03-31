#待修改
class Bike
  def initialize(minutes)
    @minutes = minutes
  end

  def rent(time)
    if time < 30
      return 5
    elsif time > 30 and time < 240
      return 10 + 5
    elsif time > 240 and time < 480
      return 5 + 7 * 10 + 2 * 20
    elsif time > 480
      return 5 + 7 * 10 + 8 * 20 + 2 * 40 
    end
  end

  def borrow(time)
    if time < 240
      return 4 * 10
    elsif time > 240
      return 8 * 10 + 2 * 20
    end
  end
end
