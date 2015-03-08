```ruby
#
module TestMod
  #
  class Adventure
    # Thing
    class Thing

      attr_accessor( :name )

      def initialize( aName )
        @name = aName
      end

      def describe
        print( "#{self.name}" )
      end
    end


    # Treasure
    class Treasure < Thing
      attr_accessor :value

      def initialize( aName, aValue )
        super( aName )
        @value = aValue
      end

      def describe
        super
        print( " (worth #{@value} groats). " )
      end
    end

    # Room
    class Room < Thing
      # TODO: Add Room-specific behaviour
      attr_accessor :treasures

      # @treasures will be an array
      def initialize( aName, someTreasures )
        super( "\n#{aName}" )
        @treasures = someTreasures
      end

      def describe
        super
        if @treasures.length == 0
          print( " which is empty." )
        else
          print( " which contains: " )
          @treasures.each do |a_treasure|
            a_treasure.describe
          end
        end
      end
    end


    # Map
    class Map
      # @rooms will be an array - an ordered list
      # of Room objects
      def initialize( someRooms )
        @rooms = someRooms
      end

      # The to_s method iterates over all the Room objects in @rooms
      # and prints information on each.
      def describe
        print( "This is a map containing these locations:" )
        @rooms.each do |a_room|
          a_room.describe
        end
      end
    end

    def initialize
      # First create a few objects
      #   i) Treasures
      @t1 = Treasure.new("A sword", 800)
      @t2 = Treasure.new("A dragon Horde", 550)
      @t3 = Treasure.new("An Elvish Ring", 3000)

      #   ii) Rooms
      @room1 = Room.new("Crystal Grotto", [])
      @room2 = Room.new("Dark Cave",[@t1])
      @room3 = Room.new("Forest Glade",[@t2,@t3])
      #   iii) a Map - which is an array containing the Rooms just created
      @mymap = Map.new([@room1,@room2,@room3])
      @treasures = [@t1,@t2,@t3]
    end

    def map
      return @mymap
    end

    def treasures
      return @treasures
    end

    def endgame
      puts( "\nAt end of game, map is: " )
      p( @mymap )
      puts( "Destroying map...." )
      @mymap = []
      puts( "Map is now: " )
      p( @mymap )
    end
  end
end
```