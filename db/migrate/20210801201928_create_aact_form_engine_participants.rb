class CreateAactFormEngineParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :aact_form_engine_participants, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
