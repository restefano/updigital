class CreateBrothers < ActiveRecord::Migration
  def change
    create_table :brothers do |t|
      t.string :name
      t.string :addr1
      t.string :addr2
      t.string :cep
      t.string :resphone
      t.string :cellphone
      t.string :comphone
      t.string :birthdate
      t.string :date1
      t.string :date2
      t.string :date3
      t.integer :degree

      t.timestamps
    end
  end
end
