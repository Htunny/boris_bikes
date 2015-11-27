require 'bike'

describe Bike do
    it { is_expected.to respond_to :working?}

    it 'report a broken bike when docking' do
      subject.report_broken_bike
      expect(subject.working?).to eq false
    end

end
