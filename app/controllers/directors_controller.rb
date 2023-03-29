class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "director_template/index.html.erb" })
  end

  def wisest
    @oldest_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "director_template/eldest.html.erb" })
  end

  def young
    @youngest_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(-1)
    render({ :template => "director_template/youngest.html.erb" })
  end

  def director_details
    # params looks like {"an_id" => "42"}
    the_id = params.fetch("an_id")
    @the_director = Director.where({ :id => the_id }).at(0)

    @filmography = Movie.where({ :director_id => @the_director.id})
    render({ :template => "director_template/show.html.erb" })
  end
end
