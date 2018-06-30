module Concerns
  module Findable
    def find_by_name(name)
<<<<<<< HEAD
      all.detect {|item| item.name == name }
    end

    def find_or_create_by_name(name)
      find_by_name(name) || create(name)
=======
      self.all.detect {|item| item.name == name }
    end

    def find_or_create_by_name(name)
      self.find_by_name(name) ? self.find_by_name(name) : self.create(name)
>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
    end
  end
end
