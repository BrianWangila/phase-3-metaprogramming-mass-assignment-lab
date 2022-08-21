class Person
  # your code here
  def initialize(attributes)

    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)      
    end
  end
end


bob_attributes = { name: "Bob", hair_color: "Brown" }
susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

bob = Person.new(bob_attributes)
susan = Person.new(susan_attributes)

puts bob.name
puts susan.name