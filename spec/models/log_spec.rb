require 'rails_helper'

RSpec.describe Log, :type => :model do
  let!(:log) { build(:log) }
  subject { log }

  it { is_expected.to respond_to :user }

  it { is_expected.to validate_presence_of :action }
end
