require 'rails_helper'

RSpec.describe Poi, type: :model do
  describe "relationships" do
    it { should belong_to :region }
    it { should have_one(:kingdom).through(:region) }
    it { should have_one(:continent).through(:region) }
  end
end
