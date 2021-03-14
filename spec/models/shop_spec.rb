require 'rails_helper'

RSpec.describe Shop, type: :model do
  describe "relationships" do
    it { should belong_to :district }
    it { should have_one(:city).through(:district) }
    it { should have_one(:region).through(:district) }
    it { should have_one(:kingdom).through(:district) }
    it { should have_one(:continent).through(:district) }
  end
end
