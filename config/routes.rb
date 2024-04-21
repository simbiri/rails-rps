Rails.application.routes.draw do
  get("/", { :controller => "logics", :action => "homepage" })
  get("/rock", { :controller => "logics", :action => "rock" })
  get("/paper", { :controller => "logics", :action => "paper" })
  get("/scissors", { :controller => "logics", :action => "scissors" })
end
