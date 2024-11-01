Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "misc", :action => "directors"})
  get("/movies", {:controller => "misc", :action => "movies"})
  get("/movies/:id", {:controller => "misc", :action => "movie_id"})
  get("/actors", {:controller => "misc", :action => "actors"})
  get("/actors/:id", {:controller => "misc", :action => "actor_id"})
  get("/directors/youngest", {:controller => "misc", :action => "youngest"})
  get("/directors/eldest", {:controller => "misc", :action => "oldest"})
  get("/directors/:id", {:controller => "misc", :action => "dir_id"})
end
