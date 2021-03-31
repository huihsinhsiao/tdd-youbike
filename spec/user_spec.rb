# 收費規則
# 會員：
# 非會員（單次租車）：

require '../lib/user'

RSpec.describe User do
  context "區分會員" do
    it "是會員" do
      user = User.new
      result = user.mobile
      expect(result).to be true
    end

    it "非會員" do
      user = User.new
      result = user.mobile
      expect(result).to be false
    end
  end
end
