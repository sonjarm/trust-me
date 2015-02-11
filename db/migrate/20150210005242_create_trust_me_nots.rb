class CreateTrustMeNots < ActiveRecord::Migration
  def change
    create_table :trust_me_nots do |t|
      t.string :title
      t.text :notes
      t.date :due
      t.boolean :done

      t.timestamps
    end
  end
end
