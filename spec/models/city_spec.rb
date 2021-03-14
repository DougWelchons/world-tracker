require 'rails_helper'

RSpec.describe City, type: :model do
  describe "relationships" do
    it { should belong_to :region }
    it { should have_one(:kingdom).through(:region) }
    it { should have_one(:continent).through(:region) }
    it { should have_many :districts }
    it { should have_many(:shops).through(:districts) }
  end
end
