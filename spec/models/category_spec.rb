require 'rails_helper'

describe Category do

  before(:each) do
    @category = FactoryGirl.build(:category)
  end

  it { expect(@category).to be_valid }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_least(3).is_at_most(25) }
  it { is_expected.to validate_uniqueness_of(:name) }

end