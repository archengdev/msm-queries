Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "misc", :action => "directors"})
  get("/directors/:id", {:controller => "misc", :action => "dir_id"})
  get("/movies", {:controller => "misc", :action => "movies"})
  get("/movies/:id", {:controller => "misc", :action => "movie_id"})
  get("/actors", {:controller => "misc", :action => "actors"})
  get("/actors/:id", {:controller => "misc", :action => "actor_id"})
end
