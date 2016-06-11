json.array!(@emojis) do |emoji|
	json.name emoji.name
	json.thumb_url emoji.image.url(:thumb)
	json.emoji_url emoji.image.url(:emoji)
end
