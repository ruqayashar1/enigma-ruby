class ApplicationController < ActionController::Base
    def hello
        puts "Hello World !"
        students= ["Thomas","John","Samson"]
        # Render means display or show
        
        k=""
        # <div>
        #  <h1>Thomas</h1>
        # </div>

        students.each do |student|
            k=k+"<h1>#{student}</h1>"
        end

        puts k

        render html:"<div>#{k}</div> <a href='about'>About</a>".html_safe
    end

    def about

        render html:"<div> 
             <h1>Hello World</h1>
             <a href='/'>Home</a>
        </div>".html_safe
    end

end
