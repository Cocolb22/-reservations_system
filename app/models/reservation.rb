class Reservation < ApplicationRecord
  require 'csv'
  require 'date'

  def self.import(file)
    CSV.foreach(file, col_sep: ';', headers: :first_row) do |row|
        Reservation.create(
          billet_number: row["Numero billet"]&.to_i,
          reservation_number: row["Reservation"]&.to_i,
          reservation_date: row["Date reservation"],
          reservation_hour: row["Heure reservation"],
          spectacle_key: row["Cle spectacle"]&.to_i,
          spectacle: row["Spectacle"],
          representation_key: row["Cle representation"]&.to_i,
          representation: row["Representation"],
          representation_date: row["Date reservation"],
          representation_hour: row["Heure representation"],
          representation_end_date: row["Date fin representation"],
          representation_end_hour: row["Heure fin representation"],
          price: row["Prix"]&.to_i,
          product_type: row["Type de produit"],
          sale_company: row["Filiere de vente"],
          last_name: row["Nom"],
          first_name: row["Prenom"],
          email: row["Email"],
          adress: row["Adresse"],
          zipcode: row["Code postal"],
          country: row["Pays"],
          age: row["Age"]&.to_i,
          gender: row["Sexe"],
        )
    end
  end
end
