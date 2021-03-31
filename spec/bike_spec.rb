# 收費規則
# 會員：
# 前 30 分鐘 5 元
# 超過 30 分鐘，但於 4 小時內還車，費率為每 30 分鐘 10 元。
# 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。
# 超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價。
# 非會員（單次租車）：
# 4 小時內，費率為每 30 分鐘 10 元。
# 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。

require '../lib/bike'

RSpec.describe Bike do
  context "會員收費區" do
    it "前30分鐘5元" do
      betty = Bike.new(0)
      result = betty.rent(25)
      expect(result).to be 5
    end

    it "超過 30 分鐘，但於 4 小時內還車" do
      betty = Bike.new(0)
      result = betty.rent(40)
      expect(result).to be 15
    end

    it "超過4小時，但於 8 小時內還車" do
      betty = Bike.new(0)
      result = betty.rent(300)
      expect(result).to be 115
    end

    it "超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價。" do
      betty = Bike.new(0)
      result = betty.rent(540)
      expect(result).to be 315
    end
  end

  context "非會員收費區" do
    it "4 小時內，費率為每 30 分鐘 10 元" do
      david = Bike.new(0)
      result = david.borrow(120)
      expect(result).to be 40
    end

    it "超過 4 小時，但於 8 小時內還車" do
      david = Bike.new(0)
      result = david.borrow(300)
      expect(result).to be 120
    end
  end
end
