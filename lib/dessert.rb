class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    if(calories < 200)
      return true
    end
    return false
  end
  def delicious?
    return true
  end
  def name
    @name
  end
  def calories
    @calories
  end
  def name=(value)
    @name=value
  end
  def calories=(value)
    @calories=value
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = flavor+" jelly bean"
    @calories = 5
  end
  def flavor
    @flavor
  end
  def flavor=(value)
    @flavor=value
  end
  def delicious?
    if(@flavor.downcase == "licorice")
      return false
    end
    return true
  end
end
