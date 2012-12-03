class Fortune < ActiveRecord::Base

  has_many :comments, :dependent => :destroy

  acts_as_taggable_on :tags
  

  def self.search(search)
    if search
      where('body LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

  # atrybut: body
  validates :body, :presence => true
  # validates_presence_of :body
  validates_length_of :body, :in => 2..500
  # validates_length_of :body, :minimum => 2, :maximum => 500
  validates_uniqueness_of :body, :case_sensitive => false

  # atrybut: author
  validates :author, :length => {:in => 4..64}, :allow_blank => true

end
