class Song < ActiveRecord::Base
	belongs_to :album
	has_attached_file :audio_file
	validates_attachment_content_type :audio_file, :content_type => ['audio/mp3', 'application/x-mp3', 'audio/ogg', 'audio/mpeg'], :if => :audio_file_attached?

  def audio_file_attached?
    self.audio_file.file?
  end
	
end
