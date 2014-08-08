require 'spec_helper'
require_relative '../app/message_filter'

RSpec.describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end
  it 'detects message with NG word' do
    expect(@filter).to be_detect('hello from foo')
  end
  it 'does not detect message withoutw NG word' do
    expect(@filter).not_to be_detect('hello, world')
  end
end