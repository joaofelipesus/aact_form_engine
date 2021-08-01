class CreateAactFormEngineFormKinds < ActiveRecord::Migration[6.1]
  def change
    create_table :aact_form_engine_form_kinds do |t|
      t.string :name
      t.string :description
      t.integer :answer_sequence

      t.timestamps
    end
  end
end
