require 'rails_helper'

describe SnippetLang, type: :model do
  let(:snippet_lang) { create(:snippet_lang) }

  subject { snippet_lang }

  context 'отвечает и валидно' do

    it { should belong_to(:lang) }
    it { should belong_to(:snippet) }

    it { should be_valid }
  end

end
