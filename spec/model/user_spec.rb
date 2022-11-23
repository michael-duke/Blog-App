require 'rails_helper'

describe User, type: :model do
  subject { User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Influencer from A.A.') }

  it 'name should be present' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'has it\'s posts_counter greater than or equal to 0' do
    subject.posts_counter = -10
    expect(subject).to_not be_valid
  end

  it 'has it\'s posts_counter set to 0 by default' do
    expect(subject.posts_counter).to eq 0
    expect(subject).to be_valid
  end

  it 'can select recent 3 posts' do
    expect(subject).to respond_to(:recent_three)
  end

  it 'has the recent 3 posts after it creates 4 posts' do
    4.times { |time| Post.create(author: subject, title: "Post #{time + 1}", text: 'This is a test post') }
    expect(subject.recent_three.length).to eq 3

    recent_post_title = subject.recent_three.first.title
    expect(recent_post_title).to match 'Post 4'
  end
end
