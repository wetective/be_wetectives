class WantedFacade
  
  def self.create_wanted_list
    wanted_list = WantedService.get_wanted_list
    
    wanted_list.map do |person|
      if person[:status] != 'captured'
        Wanted.new(person)
      end
    end
  end
end