class SupportRequest < ApplicationRecord
  belongs_to :order, optional: true
  has_rich_text :response
  def change
    create_table :support_requests do |t|
      t.string :email,    comment: "Email of the submmiter"
      t.string :subject,  comment: "Subject of their support email"
      t.text :body,       comment: "Body of their support email"

      t.references :order,
      foreign_key: true,
      comment: "their most recent order, if applicable"

      t.timestamps
    end
  end
end
