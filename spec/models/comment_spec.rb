require 'rails_helper'

RSpec.describe Comment, :type => :model do
  let!(:comment) { build(:comment) }
  subject{ comment }

  it { is_expected.to respond_to :post }
  it { is_expected.to respond_to :user }

  it { is_expected.to validate_presence_of :post_id }
  it { is_expected.to validate_presence_of :user_id }
  it { is_expected.to validate_presence_of :body }

  it { is_expected.to validate_length_of(:body).is_at_most(160).with_message("160자를 못넘어요~") }
end
