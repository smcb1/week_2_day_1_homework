class Student

  attr_accessor :name, :cohort, :talk, :language

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
    @language = nil
  end

  def name
    return @name
  end
  
  def cohort
    return @cohort 
  end
  
  def name_update(new_name)
    return @name = new_name
  end

  def cohort_update(new_cohort)
    return @cohort = new_cohort
  end

  def talk_update(message)
    return @talk = message
  end

  def fave_lang(pref)
   return @language = "I love #{pref}" 
  end

end