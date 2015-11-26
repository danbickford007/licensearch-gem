require 'spec_helper'

describe Georgia::Business do

  describe '.count' do

    it 'gives count of business records in florida' do
      Georgia::Business.count.should be  > 4500
    end

  end

  describe '.query' do

    it 'by business name' do
      expect(Georgia::Business.query({name: "100 Tuliptree LLC"})[0]['control_number']).to eq('13386012')
    end

  end

end
