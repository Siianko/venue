require 'rails_helper'

RSpec.describe Performer, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :genre }
    it { is_expected.to have_db_column :city }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :facebook }
    it { is_expected.to have_db_column :instagram }
    it { is_expected.to have_db_column :twitter }
    it { is_expected.to have_db_column :youtube }
    it { is_expected.to have_db_column :website }
    it { is_expected.to have_db_column :spotify }
    it { is_expected.to have_db_column :state }

  end

  describe 'Validates' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :genre }
    it { is_expected.to validate_presence_of :city }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :state }

  end
  
  describe 'Associations' do
    it { is_expected.to have_and_belong_to_many :users }
    it { is_expected.to have_many(:campaigns).through(:users) }
  end
  
  describe "Factory" do
    it "for :user is valid" do
      expect(create(:performer)).to be_valid
    end
  end

  describe 'Check for states, events and transistions' do
    subject { create(:performer) }

    it { is_expected.to have_states :active, :archived }
    it { is_expected.to handle_events :archive, when: :active }

    it ':archive transitions from :active to :archive' do
      subject.archive
      expect(subject.archived?).to eq true
    end
  end
end