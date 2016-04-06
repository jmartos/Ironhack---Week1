class Blog
  
  def initialize
    @blog = []
  end

  # def calculate_pages
  #   @total_pages = (blog.length/3)+1

  #end

  def add_post (post)
    @blog.push(post)
  end

  def order
    @blog.sort_by! {|item| item.date}
  end
  
  def show_blog (blog)
  
    blog.each do |item|
      puts "#{item.title}\n*****************\n#{item.text}\n-----------------"
    end 
  end

#   def change_page  
#     start_page = 0
#     show_blog(@blog.slice(start_page,3))
#     puts "1 2 3"
#     puts "next or prev"
#     question = gets.chomp 
#      while question == "next" || question == "prev" do
#       if question == "next"
#         start_page += 1
#       elsif question == "prev"
#         start_page -= 1
#       end
#       show_blog(@blog.slice(start_page,3))
#     end
#   end
# end



class Post < Blog
attr_accessor :title, :date, :text
  def initialize (title, date, text)
  
    @title = title
    @date = date
    @text = text
  end


  def sponsor
      @title = "******#{@title}********"
  end

end

blog = Blog.new

post1 = Post.new "Hello World", "2014/05/22", "This is the first post of the awsome blog for Ironhack"
post2 = Post.new "New opening", "2016/11/12", "A new Ironhack center has opened in Sebastopol, we are so happy"
post3 = Post.new "Special offer!", "2015/03/04", "We have now a special offer for all redheads in the world!"
post4 = Post.new "Another post", "2014/08/21", "This is another post with nothig to say"
post5 = Post.new "New Year!", "2014/12/31", "Happy new year!!!"
post6 = Post.new "Welcome summer", "2016/06/21", "Finally summer has come"
post7 = Post.new "Welcome winter :(", "2015/12/21", "Noooooo.... winter again....."
post8 = Post.new "The last post", "3000/12/31", "This is the las post of the history"

blog.add_post (post1)
blog.add_post (post2)
blog.add_post (post3)
blog.add_post (post4)
blog.add_post (post5)
blog.add_post (post6)
blog.add_post (post7)
blog.add_post (post8)

post2.sponsor
blog.order
blog.show_blog

#blog.change_page

