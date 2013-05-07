InstaphotoGetter::Application.routes.draw do
  root to: "homes#index"
  get '/show' => "homes#show"
end
