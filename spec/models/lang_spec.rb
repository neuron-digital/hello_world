require 'rails_helper'

describe Lang, type: :model do
  let(:lang) { create(:lang) }

  subject { lang }

  context 'отвечает и валидно' do
    it { should respond_to(:title) }
    it { should respond_to(:description) }

    it { should have_many(:snippets) }
    it { should have_many(:snippet_langs) }

    it { should be_valid }
  end

end
