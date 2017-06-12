Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :pictures

root to: 'pictures#index'

# get 'pictures' => 'pictures#index'
#
# # NEW PICTURES
# post 'pictures' => 'pictures#create'
#
# get 'pictures/new' => 'pictures#new'
#
# # Show Specific Picture
#
# get 'pictures/:id' => 'pictures#show'
#
# # EDIT existing Picture
#
# # When button to edit a pic is pressed sents to controller edit method
# get 'pictures/:id/edit' => 'pictures#edit'
#
# # When a change is submitted via a form a patch request(the params of the update) is sent to the controller update method
# patch 'pictures/:id' => 'pictures#update'
#
#
# # DESTROY/DELETE routes
#
# delete 'pictures/:id' => 'pictures#destroy'
end
