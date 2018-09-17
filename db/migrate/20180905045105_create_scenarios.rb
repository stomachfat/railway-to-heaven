class CreateScenarios < ActiveRecord::Migration[5.1]
  def change
    create_table :scenarios do |t|

      t.timestamps
    end
  end
end
