require 'rails_helper'

RSpec.describe Campaign, type: :model do
  describe "relationships" do
    it { should belong_to :user}
    it { should have_many :continents }
    it { should have_many(:kingdoms).through(:continents) }
    it { should have_many(:regions).through(:continents) }
    it { should have_many(:cities).through(:continents) }
    it { should have_many(:districts).through(:continents) }
    it { should have_many(:shops).through(:continents) }
    it { should have_many(:pois).through(:continents) }
  end
end
