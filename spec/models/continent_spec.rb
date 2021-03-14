require 'rails_helper'

RSpec.describe Continent, type: :model do
  describe "relationships" do
    it { should have_many :kingdoms }
    it { should have_many(:regions).through(:kingdoms) }
    it { should have_many(:cities).through(:kingdoms) }
    it { should have_many(:districts).through(:kingdoms) }
    it { should have_many(:shops).through(:kingdoms) }
    it { should have_many(:pois).through(:kingdoms) }
  end
end
