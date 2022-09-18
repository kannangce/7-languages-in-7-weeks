module ClientWizard
   def step_one_completed?
      puts "in client wizard"
     end
end

module TwoWizard
   def step_one_completed?
      puts "in two wizard"
     end
  end

class User
    include ClientWizard
    include TwoWizard
end


User.new().step_one_completed? ## calls the one from TwoWizard