# frozen_string_literal: true

require 'rails_helper'
require 'net/http'

RSpec.describe Orchestators::ListLocations, type: :actor do
  let(:http_mock) do
    instance_double(Net::HTTP, 'use_ssl=': true).tap { |m| allow(Net::HTTP).to receive(:new).and_return(m) }
  end
  let(:mock_response) { instance_double(Net::HTTPResponse, body: response_body) }
  let(:response_body) do
    {
      'content' => [
        { 'title' => 'Location 1' },
        { 'title' => 'Location 2' }
      ]
    }.to_json
  end

  before do
    allow(http_mock).to receive(:request).and_return(mock_response)
  end

  describe '.call' do
    it 'fetches and lists locations' do
      result = nil
      expect do
        result = described_class.call
      end.to output("1. Location 1\n2. Location 2\n").to_stdout

      expect(result.locations).to eq(['Location 1', 'Location 2'])
    end
  end
end
