class SectionEdit < ActiveRecord::Base
  has_and_belongs_to_many :admin_users
  belongs_to :editor, :class_name => "AdminUser", :foreign_key => "admin_user_id"
  belongs_to :section
end
