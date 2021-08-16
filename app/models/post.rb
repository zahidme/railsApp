class Post < ApplicationRecord
    belongs_to :user
    has_many :comments

    validates_presence_of :title
    validates_presence_of :description

   def self.search(search)
    if search
        title = Post.find_by(title: search)
        if title
           # abort title.inspect
            self.where(id: title).inspect
            #abort abc.inspect
        else
            @posts = Post.all.order('created_at DESC')
            #abort @posts.inspect
        end

    else
      @posts = Post.all.order('created_at DESC')
      #abort @posts.inspect
      end
    end
      
   
end
