require 'spec_helper'

RSpec.describe 'MessageFilter' do
  it 'detects message with NG word' do
    filter = MessageFilter.new('foo')
    expect(filter.detect?('hello from foo')).to eq true
  end
end