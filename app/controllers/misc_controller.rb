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
end
