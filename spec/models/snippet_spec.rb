require 'rails_helper'

describe Snippet, type: :model do
  let(:snippet) { create(:snippet) }

  subject { snippet }

  context 'отвечает и валидно' do
    it { should respond_to(:title) }
    it { should respond_to(:content) }
    it { should respond_to(:visibility) }

    it { should have_many(:langs) }
    it { should have_many(:snippet_langs) }

    it { should belong_to(:user) }

    it { should be_valid }
  end

end
