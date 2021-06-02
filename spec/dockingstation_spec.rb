require './lib/dockingstation.rb'

describe DockingStation do
    it 'return true if an instance of DockingStation responds to release_bike' do
        docking_station = DockingStation.new
        expect(docking_station.respond_to?(:release_bike)).to eq(true)
    end
end