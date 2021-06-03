require './lib/dockingstation.rb'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike) } 
    it "returns docked bikes" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
    end 

    describe "#release_bike" do
        it 'returns error when no bikes available' do
        expect { subject.release_bike }.to raise_error "No bikes available"
        end

        it 'releases working bikes' do
            bike = Bike.new
            subject.dock(bike)
            expect(bike).to be_working
        end
    end
end
    
