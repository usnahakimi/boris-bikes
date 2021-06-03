require_relative 'bike'

#   def initialize (bike)
#     @bike = bike 
#   end 
class DockingStation
    attr_reader :bike 
    
    def release_bike
        fail "No bikes available" unless @bike
        @bike
    end
    def dock(bike)
        fail "Dock station is full" if @bike
        @bike = bike
    end 
   
end