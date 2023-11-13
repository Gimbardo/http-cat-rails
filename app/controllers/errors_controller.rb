class ErrorsController < ApplicationController
  Http::Cat::Rails.status_codes.each do |code, desc|
    define_method(desc.downcase.gsub(' ', '_')) do
      @code = code
      render 'error', layout: Http::Cat::Rails.layout
    end
  end
end
