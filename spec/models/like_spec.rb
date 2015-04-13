require 'rails_helper'

RSpec.describe Like, :type => :model do
  let!(:like) { build(:like) }
  subject { like }

  it { is_expected.to respond_to :post }
  it { is_expected.to respond_to :user }

  it { is_expected.to validate_presence_of :post_id }
  it { is_expected.to validate_presence_of :user_id }
end
