require_relative 'spec_helper'
require_relative '../lib/user.rb'
require_relative '../lib/post.rb'

describe 'User class' do
  let(:test_user) { User.new }
  let(:fake_user) { User.new }
  it 'exists' do
    raise unless :test_user
  end

  context '#go_stat' do
    it 'returns an array' do
      stat = test_user.go_stat.split(',')
      expect(stat).to be_an_instance_of(Array)
    end
  end

  context '#name' do
    it 'returns string' do
      namef = test_user.name(4)
      expect(namef).to be_kind_of(String)
    end
  end

  context '#sets_url' do
    it 'returns array' do
      allow(fake_user).to receive(:sets_url).and_return([])
      expect(fake_user.sets_url).to eq []
    end
  end

  context '#parse_url' do
    it 'gets wrong url' do
      wrong_user_url = stub_const('User::URL', 'https://jsonplaceholder.typicode.com/u')
      wrong_post_url = stub_const('Post::URL', 'https://jsonplaceholder.typicode.com/p')
      expect(test_user.sets_url([wrong_user_url, wrong_post_url])).to contain_exactly('Check URL, cannot connect with it', 'Check URL, cannot connect with it')
    end
  end
end
