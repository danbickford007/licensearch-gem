require 'spec_helper'

describe Florida::Business do

  before(:all) do
    Florida::Business.auth
  end

  describe '.count' do

    it 'gives count of business records in florida' do
      Florida::Business.count.should be  > 50000
    end

  end

end
