Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/youngest", { :controller => "directors", :action => "young" })

  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("/movies", { :controller => "movies", :action => "movie_list" })

  get("/movies/:movie_id", { :controller => "movies", :action => "movie_details" })

  get("/actors", { :controller => "actors", :action => "actors_list" })

  get("/actors/:actor_id", { :controller => "actors", :action => "actors_details" })
end
