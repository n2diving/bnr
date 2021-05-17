class Post < ApplicationRecord
  belongs_to :user

  #TODO refactor/DRY up, extract to filterable concern reusable for all models and add support for user expertise query and user name dropdown
  scope :filtered, -> (query_params) { where("body ILIKE ? OR body ILIKE ?", "%#{query_params[:text]}%", "%#{query_params[:text]}%").or(where(user_id: (User.where("name ILIKE ?", "%#{query_params[:text]}%")))) if query_params[:text].present? }

  validates_presence_of :title
  validates_presence_of :body
  validates_presence_of :user

end