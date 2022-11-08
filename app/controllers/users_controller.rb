class UserController <ApplicationController
   # all routes pertaining to USERS
   get '/' do
    {hello: "You can start 😃"}.to_json
end
end
