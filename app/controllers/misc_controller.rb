class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end
  def directors
    @dir_list = Director.all
    render({ :template => "misc_templates/directors"})
  end
  def dir_id
    @id = params.fetch("id")
    @dir = Director.all.where({:id => @id})[0]
    @film_list = Movie.all.where({:director_id => @id })
    render({ :template => "misc_templates/dir_id"})
  end

  def movies
    @movie_list = Movie.all
    render({ :template => "misc_templates/movies"})
  end

  def movie_id
    @id = params.fetch("id")
    @movie = Movie.all.where({:id => @id})[0]
    @dir = Director.all.where({:id => @movie.director_id})[0]
    render({ :template => "misc_templates/movie_id"})
  end

  def actors
    @actor_list = Actor.all
    render({ :template => "misc_template/actors"})
  end

  def actor_id
    @id = params.fetch("id")
    @actor = Actor.all.where({:id => @id})[0]
    @films = Character.all.where({:actor_id => @id})
    render({ :template => "misc_template/actor_id"})
  end
end
