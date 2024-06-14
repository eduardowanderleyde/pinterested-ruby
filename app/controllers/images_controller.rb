class ImagesController < ApplicationController
  def show
    folder = params[:folder]
    model = params[:model]
    id = params[:id]
    style = params[:style]
    filename = params[:filename]

    path = Rails.root.join('public', 'system', folder, model, id, style, filename)

    if File.exist?(path)
      send_file path, type: 'image/jpeg', disposition: 'inline'
    else
      render plain: "Image not found", status: :not_found
    end
  end
end
