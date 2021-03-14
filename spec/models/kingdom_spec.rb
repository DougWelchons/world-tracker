require 'rails_helper'

RSpec.describe Kingdom, type: :model do
  describe "relationships" do
    it { should belong_to :continent }
    it { should have_many :regions }
    it { should have_many(:cities).through(:regions) }
    it { should have_many(:districts).through(:regions) }
    it { should have_many(:shops).through(:regions) }
    it { should have_many(:pois).through(:regions) }
  end
end
