Rails.application.routes.draw do
  Http::Cat::Rails.status_codes.each do |code, desc|
    match "/#{code}", to: "errors##{desc.downcase.gsub(' ', '_')}", via: :all
  end
end
