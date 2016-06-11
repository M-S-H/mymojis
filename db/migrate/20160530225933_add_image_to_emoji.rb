class AddImageToEmoji < ActiveRecord::Migration
  def change
  	add_attachment :emojis, :image
  end
end
