require 'rails_helper'

describe Post, type: :model do
  before :each do
    @author = User.new(name: 'Andor', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                       bio: 'Rebel fighter from Kenari')
    @post = Post.new(author: @author, title: 'Post numero uno', text: 'This is a test post')
  end

  it 'title should be present' do
    @post.title = nil
    expect(@post).to_not be_valid
  end

  it 'title should not be empty' do
    @post.title = ''
    expect(@post).to_not be_valid
  end

  it 'title should be a maximum of 250 characters' do
    @post.title =
      'Andor takes Star Wars in a completely new direction than we’ve ever seen before.
    Cassian’s origin story opens not with talk of Jedi and Sith, or a civil war between the Empire and the Rebellion,
    but with a common crook who’s down on his luck and desperate. The opening minutes that play like a neo-noir
    crime thriller straight out of Blade Runner soon give way to a very grounded story about the folks you don’t
    normally see in a Star Wars movie, including the blue collar workers who keep the wheels turning on the Empire’s
    corporate interests.'

    expect(@post).to_not be_valid
  end

  it 'has it\'s comments_counter set to 0 by default' do
    expect(@post.comments_counter).to eq 0
    expect(@post).to be_valid
  end

  it 'has it\'s likes_counter set to 0 by default' do
    expect(@post.likes_counter).to eq 0
    expect(@post).to be_valid
  end

  it 'has it\'s comments_counter greater then or equal to 0' do
    @post.comments_counter = -10
    expect(@post).to_not be_valid
  end

  it 'has it\'s likes_counter greater then or equal to 0' do
    @post.likes_counter = -10
    expect(@post).to_not be_valid
  end

  it 'has the recent 5 comments after it creates 10 comments' do
    10.times { |time| Comment.create(author: @author, post: @post, text: "Test comment numero #{time + 1}") }
    expect(@post.recent_five.length).to eq 5

    recent_comment_text = @post.recent_five.first.text
    expect(recent_comment_text).to match 'Test comment numero 10'
  end

  it 'can not update posts_counter since it\'s a private method' do
    expect(@post).to_not respond_to(:update_posts_counter)
  end
end
