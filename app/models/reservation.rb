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
        age: row["Age"]&.to_i,
        gender: row["Sexe"],
      )
    end
  end
end

# Row "Numero billet":"1491963" "Reservation":"838762"
# "Date reservation":"02/06/15 00:00" "Heure reservation":"12:23:36"
# "Cle spectacle":"539" "Spectacle":"Sauterelles" "Cle representation":"3608"
# "Representation":"Sauterelles" "Date representation":"08/01/16"
# "Heure representation":"20:00:00" "Date fin representation":"08/01/16"
# "Heure fin representation":"22:30:00" "Prix":"27" "Type de produit":"Abonnement"
# "Filiere de vente":"GUICHET" "Nom":"CZERWIEC" "Prenom":"Théodore et Christel"
# "Email":"Théodore et Christel.CZERWIEC@mail.fr" "Adresse":"5 rue Larus argentatus"
# "Code postal":"69003" "Pays":"France" "Age":"51" "Sexe":"F">
