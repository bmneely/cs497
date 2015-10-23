# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  bio                    :text
#  role                   :integer
#  slug                   :string
#

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it { should respond_to(:email) }
  it { should respond_to(:encrypted_password) }
  it { should respond_to(:reset_password_token) }
  it { should respond_to(:remember_created_at) }
  it { should respond_to(:sign_in_count) }
  it { should respond_to(:current_sign_in_at) }
  it { should respond_to(:last_sign_in_at) }
  it { should respond_to(:current_sign_in_ip) }
  it { should respond_to(:last_sign_in_ip) }
  it { should respond_to(:confirmation_token) }
  it { should respond_to(:confirmed_at) }
  it { should respond_to(:confirmation_sent_at) }
  it { should respond_to(:unconfirmed_email) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }

end
