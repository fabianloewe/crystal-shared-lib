require "./crystal-shared-lib/*"

@[Export]
module CrystalShared
  def test
    puts "Hi from #{self}"
  end
end

@[Export]
class CrystalSharedClass
  def self.test
    puts "Hi from #{self}"
  end
end

CrystalSharedClass.test
