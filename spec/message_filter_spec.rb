require 'spec_helper'
require_relative '../app/message_filter'

RSpec.shared_examples 'MessageFilter with argument "foo"' do
  it { is_expected.to be_detect('hello from foo') }
  it { is_expected.not_to be_detect('hello, world') }
end

RSpec.describe MessageFilter, 'with argument "foo"' do
  subject { MessageFilter.new('foo') }
  it_behaves_like 'MessageFilter with argument "foo"'
end

RSpec.describe MessageFilter, 'with argument "foo", "bar"' do
  subject { MessageFilter.new('foo', 'bar') }
  it { is_expected.to be_detect('hello from bar') }
  it_behaves_like 'MessageFilter with argument "foo"'
end
