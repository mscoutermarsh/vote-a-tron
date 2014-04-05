class AddPhotoUrlToContestant < ActiveRecord::Migration
  def change
    add_column :contestants, :photo_url, :string
  end
end
