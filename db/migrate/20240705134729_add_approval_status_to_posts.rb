class AddApprovalStatusToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :approval_status, :string
  end
end
