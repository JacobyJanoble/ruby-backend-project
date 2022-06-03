class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/character" do
    character = Character.all
    character.to_json(include: :reviews)
  end

  get "/character/:id" do
    character = Character.find(params[:id])
    character.to_json(include: :reviews)
  end

  get "/character/:id/reviews" do
    character = Character.find(params[:id])
    character.to_json(only: [], include: :reviews)
  end

  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  post "/reviews" do
    reviews = Review.create(
      rating: params[:rating],
      text: params[:text],
      character_id: params[:character_id]
    )
    reviews.to_json
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  patch "reviews/:id" do
    review = Review.find(params[:id])
    review.update(
      rating: params[:rating],
      text: params[:text]
    )
    review.to_json
  end


end
