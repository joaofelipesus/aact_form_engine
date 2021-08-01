class CreateAactFormEngineParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :aact_form_engine_participants do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
