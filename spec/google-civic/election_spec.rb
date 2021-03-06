require "spec_helper"

module Google
  module Civic
    describe Election do
      subject { Election.new(response) }
      let(:response) { MultiJson.load(load_fixture("elections"))["elections"][0] }

      its(:id) { should_not be_nil }
      its(:name) { should_not be_nil }
      its(:election_day) { should_not be_nil }
    end
  end
end
