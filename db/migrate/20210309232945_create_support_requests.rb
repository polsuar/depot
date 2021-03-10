class CreateSupportRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :support_requests do |t|

      t.timestamps
    end
  end
end
