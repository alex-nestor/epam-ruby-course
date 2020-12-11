# Task
# Your task is to complete the Cat class which Extends Animal and replace the speak method to return the cats name + meows. e.g. 'Mr Whiskers meows.'
# The name attribute is passed with this.name (JS), @name (Ruby) or self.name (Python).

class Cat < Animal
  def initialize(name)
    @name = name
  end

  attr_accessor :name

  def speak
    "#{name} meows."
  end
end
