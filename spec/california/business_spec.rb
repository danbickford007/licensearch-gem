require 'spec_helper'

describe California::Business do

  describe '.count' do

    it 'gives count of business records in california' do
      California::Business.count.should be  > 10
    end

  end

  describe '.query' do

    it 'by business name' do
      expect(California::Business.query({name: "TRIPLE E RANCHES L.L.C."})[0]['number']).to eq('201016110157')
    end

  end

end
