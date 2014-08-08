require 'spec_helper'
require_relative '../app/message_filter'

RSpec.describe MessageFilter, 'with argument "foo"' do
  before do
    @filter = MessageFilter.new('foo')
  end
  # it 'detects message with NG word' do
  #   expect(@filter).to be_detect('hello from foo')
  # end
  it {
    expect(@filter).to be_detect('hello from foo')
  }
  # it 'does not detect message without NG word' do
  #   expect(@filter).not_to be_detect('hello, world')
  # end
  it {
    expect(@filter).not_to be_detect('hello, world')
  }
end