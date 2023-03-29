Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("/movies/:movie_id", { :controller => "directors", :action => "movie_details" })
end
