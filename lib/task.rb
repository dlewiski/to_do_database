class Task
  attr_reader(:name)

  def initialize(name)
    @name = name
  end

  def ==(other)
    same_class = self.class().eql?(other.class())
    same_name = self.name().eql?(other.name())
    same_class.&(same_name)
  end
end
