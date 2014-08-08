require 'spec_helper'
require_relative '../app/message_filter'

RSpec.describe MessageFilter, 'with argument "foo"' do
  before do
    @filter = MessageFilter.new('foo')
  end
  subject { @filter }
  it {
    is_expected.to be_detect('hello from foo')
  }
  it {
    is_expected.not_to be_detect('hello, world')
  }
end