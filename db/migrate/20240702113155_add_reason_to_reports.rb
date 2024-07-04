class AddReasonToReports < ActiveRecord::Migration[7.1]
  def change
    add_column :reports, :reason, :string
  end
end
