require 'spec_helper'
require_relative '../app/message_filter'

RSpec.describe MessageFilter do
  it 'detects message with NG word' do
    filter = MessageFilter.new('foo')
    expect(filter.detect?('hello from foo')).to eq true
  end
  it 'does not detect message withoutw NG word' do
    filter = MessageFilter.new('foo')
    expect(filter.detect?('hello, world')).to eq false
  end
end