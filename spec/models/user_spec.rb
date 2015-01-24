require 'rails_helper'

describe User, type: :model do
  let(:user) { create(:user) }

  subject { user }

  context 'отвечает и валидно' do
    it { should respond_to(:first_name) }
    it { should respond_to(:last_name) }
    it { should respond_to(:password) }

    it { should have_many(:snippets) }

    it { should be_valid }
  end

end
