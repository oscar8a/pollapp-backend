class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :password, :polls, :votes
end
