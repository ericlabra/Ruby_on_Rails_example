# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Locations::List, type: :actor do
  describe '.call' do
    let(:json_response) do
      {
        'content' => [
          { 'title' => 'Location 1' },
          { 'title' => 'Location 2' }
        ]
      }
    end

    it 'returns the list of location titles' do
      result = nil
      expect do
        result = described_class.call(json_response: json_response)
      end.to output("1. Location 1\n2. Location 2\n").to_stdout

      expect(result.locations).to eq(['Location 1', 'Location 2'])
    end
  end
end
