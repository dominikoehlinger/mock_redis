require 'spec_helper'

describe '#zmscore(key, members)' do
  before { @key = 'mock-redis-test:zmscore' }

  it 'returns the scores as an array of doubles' do
    @redises.zadd(@key, [0.25, 'foo', 0.75, 'bar']).should == 2
    @redises.zmscore(@key, %w[foo bar]).should == [0.25, 0.75]
  end

  #TODO fix specs

  # it 'handles integer members correctly' do
  #   member = 11
  #   @redises.zadd(@key, 0.25, member).should == true
  #   @redises.zscore(@key, member).should == 0.25
  # end

  # it 'returns nil if member is not present in the set' do
  #   @redises.zscore(@key, 'foo').should be_nil
  # end

  it_should_behave_like 'a zset-only command'
end
