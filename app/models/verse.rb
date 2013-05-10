class Verse < ActiveRecord::Base
  attr_accessible :battle_id, :user_id, :track
  has_attached_file :track,
                    :storage => :s3,
                    :s3_credentials => S3_CREDENTIALS
end
