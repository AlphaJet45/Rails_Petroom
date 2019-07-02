class Pet < ApplicationRecord
    belongs_to :user
    after_create :send_message

    def send_message
        puts "Je vais lancer le service"
        SlackService.send_message("Nouvelle bestiole créée : " + self.name + " de l'espèce " + self.espece)
    end

    validates :name, presence: true, length: { minimum: 1 }
    validates :espece, presence: true
    validates :sexe, presence: true
    validates :age, presence: true
    validates :desc, presence: true
end
