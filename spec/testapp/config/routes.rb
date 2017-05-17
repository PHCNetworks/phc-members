Rails.application.routes.draw do

  # Mount PHCMembers
  mount Phcmembers::Engine => "/"

end
