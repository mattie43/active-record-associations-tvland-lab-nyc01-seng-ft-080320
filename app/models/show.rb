class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def build_network(network_name)
        temp = Network.create(network_name)
        self.network = temp
    end

    def actors_list
        self.actors.map { |actor| actor.full_name }
    end

end