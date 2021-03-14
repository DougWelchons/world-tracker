require 'rails_helper'

RSpec.describe Kingdom, type: :model do
  describe "validations" do
    it { should have_many(:kinkdoms) }
    it { should have_many(:regions).through(:kinkdoms) }
    it { should have_many(:cities).through(:kinkdoms) }
    it { should have_many(:districts).through(:kinkdoms) }
    it { should have_many(:shops).through(:kinkdoms) }
    it { should have_many(:pois).through(:kinkdoms) }
  end
end
