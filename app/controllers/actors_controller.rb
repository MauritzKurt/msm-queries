class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/list" })
  end

  def show
    the_id = params.fetch("the_id")

    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.at(0)

    render({ :template => "actor_templates/details" })
  end
end

# 45:17 vid, just copy pasted this controller from directors_controller
