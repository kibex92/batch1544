class Task
  attr_reader :description
  
  # STATE
  # - done
  # - priority
  # - name/description
  # - due date
  # - person in charge

  # BEHAVIOR
  # - done!
  # - done?

  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end
  
  def done!
    @done = true
  end
end