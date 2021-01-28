class Folder < ApplicationRecord
  belongs_to :user
  belongs_to :parent, optional: true, class_name: "Folder"
  has_many :articles

  before_destroy :handle_children

  #extend ActsAsTree::TreeWalker
  #acts_as_tree order: "id"

  validates :name, presence: true

  def folders
    Folder.where(parent_id: id)
  end

  def child_folders
    Folder.where(parent: self)
  end

  def handle_children
    self.articles.update_all(folder_id: self.user.folders.first.id)
  end
end