class AddReferenceToTecnology < ActiveRecord::Migration[6.1]
  def change
    add_reference :technologies, :portfolio, foreign_key: true
  end
end
