Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "misc", :action => "directors"})
  get("/directors/:id", {:controller => "misc", :action => "dir_id"})
  get("/movies", {:controller => "misc", :action => "movies"})
  get("/movies/:id", {:controller => "misc", :action => "movie_id"})
end
