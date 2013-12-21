require 'spec_helper'

describe Owner do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }

  let!(:owner) { FactoryGirl.create(:owner) }
  it { should validate_uniqueness_of(:email).case_insensitive }

  valid_emails = ['helen@gmail.com', 'someone@example.net']
  invalid_emails = [nil, '', '4535235', 'd@d', 'user@mycom', 'usermy.com', 'user', '.com', 'my.com']

  it { should_not have_valid(:email).when(*invalid_emails)}
  it { should have_valid(:email).when(*valid_emails) }
end
