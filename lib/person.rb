class Person
  attr_accessor :bank_account
  attr_reader :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def happiness=(happiness_number)
    @happiness = happiness_number
    @happiness = 10 if happiness > 10
    @happiness = 0 if happiness < 0
  end

  def hygiene=(hygiene_number)
    @hygiene = hygiene_number
    @hygiene = 10 if hygiene > 10
    @hygiene = 0 if hygiene < 0
  end

  def happy?
    if happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if hygiene> 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(felix)
    @felix = felix
    felix.happiness +=3
    happiness +=3
    return "Hi Felix! It's Stella. How are you?"
  end

  def start_conversation(felix, topic)
    @topic = topic
    @felix = felix
    topic = ["politics", "weather", "other"]
    "other" != "politics" || "weather"
    if felix, "politics"
      felix.happiness -=2
      Person.happiness -=2
      return "blah blah partisan blah lobbyist"
    elsif felix, "weather"
      felix.happpiness +=1
      Person.happiness +=1
      return "blah blah sun blah rain"
    else felix, "other"
      return "blah blah blah blah blah"
    end
  end

end
