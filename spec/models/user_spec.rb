require 'rails_helper'

RSpec.describe User, type: :model do
  
  subject { build(:user) }

  context 'table fields' do
    it { is_expected.to have_db_column(:email).of_type(:string) }
    it { is_expected.to have_db_column(:encrypted_password).of_type(:string) }
  end

  context 'factories' do
    it { expect(subject).to be_valid }
  end
end
