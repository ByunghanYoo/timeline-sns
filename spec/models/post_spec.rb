require 'rails_helper'

RSpec.describe Post, :type => :model do
  let!(:post) { build(:post) }
  subject{ post }

  it { is_expected.to respond_to :user }
  it { is_expected.to respond_to :comments }
  it { is_expected.to respond_to :likes }

  it { is_expected.to validate_presence_of :user_id }
  it { is_expected.to validate_presence_of :body }

  it { is_expected.to validate_length_of(:body).is_at_most(160).with_message("160자를 못넘어요~") }
end
