require 'spec_helper'

describe Florida::Business do

  describe '.count' do

    it 'gives count of business records in florida' do
      Florida::Business.count.should be  > 50000
    end

  end

  describe '.query' do

    it 'by business name' do
      expect(Florida::Business.query({name: "ACD MARBLE GROUP LLC"})[0]['document_number']).to eq('L10000081493')
    end

  end

end
