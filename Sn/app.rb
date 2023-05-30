require 'sinatra'

require 'pp'

# PUBLIC_DIR = File.join(File.dirname(__FILE__), 'static')

# set :public_folder, PUBLIC_DIR

set :public_folder, File.dirname(__FILE__) + '/static'

get '/' do
    redirect '/index.html'
end

# get '/' do
#     puts headers
#     puts 'Request headers:'
#     puts request.env.class
#     pp request.env
#     status 204
#     'User agent: ' + request.env['HTTP_USER_AGENT']
    
# end

# get '/param-test' do
#      puts params
#     "Params params #{params[:i]}"
# end

# get '/' do
#     send_file 'public/index.html'
# end


# get '/download' do
#     # Assuming the file you want to send is located at "/path/to/file.ext"
#     file_path = File.expand_path('./static/index.html',__dir__)
  
#     if File.exist?(file_path)
#       send_file file_path

#     else
#       status 404
#       "File not found."
#     end
#   end