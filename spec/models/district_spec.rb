require 'rails_helper'

RSpec.describe District, type: :model do
  describe "relationships" do
    it { should belong_to :city }
    it { should have_one(:region).through(:city) }
    it { should have_one(:kingdom).through(:city) }
    it { should have_one(:continent).through(:city) }
    it { should have_many :shops }
  end
end
