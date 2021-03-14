require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe "relationships" do
    it { should belong_to :kingdom }
  end
end
