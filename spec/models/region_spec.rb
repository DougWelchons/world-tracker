require 'rails_helper'

RSpec.describe Region, type: :model do
  describe "relationships" do
    it { should belong_to :kingdom }
    it { should have_one(:continent).through(:kingdom) }
    it { should have_many :cities }
    it { should have_many(:districts).through(:cities) }
    it { should have_many(:shops).through(:cities) }
    it { should have_many :pois }
  end
end
