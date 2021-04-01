Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #movie_genre
    post "/movie_genres", controller: "movie_genres", action: "create"

    #user
    post "/users", controller: "users", action: "create"

    #sessions
    post "/sessions", controller: "sessions", action: "create"

    #actors routes
    #RESTful index
    get "/actors", controller: "actors", action: "index"

    #RESTful show
    get "/actors/:id", controller: "actors", action: "show_actor"

    #RETSful create
    post "/actors", controller: "actors", action: "create"

    #RESTful update
    patch "/actors/:id", controller: "actors", action: "update"

    #RESTful delete
    delete "/actors/:id", controller: "actors", action: "destroy"

    #movies routes
    #RESTful index
    get "/movies", controller: "movies", action: "index"

    #RESTful show
    get "/movies/:id", controller: "movies", action: "show"

    #RETSful create
    post "/movies", controller: "movies", action: "create"

    #RESTful update
    patch "/movies/:id", controller: "movies", action: "update"

    #RESTful delete
    delete "/movies/:id", controller: "movies", action: "destroy"
  end
end
