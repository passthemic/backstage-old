class AddAttachmentTrackToVerse < ActiveRecord::Migration
  def self.up
    add_column :verses, :track_file_name, :string
    add_column :verses, :track_content_type, :string
    add_column :verses, :track_file_size, :integer
    add_column :verses, :track_updated_at, :datetime
  end

  def self.down
    remove_column :verses, :track_file_name
    remove_column :verses, :track_content_type
    remove_column :verses, :track_file_size
    remove_column :verses, :track_updated_at
  end
end
