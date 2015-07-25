Rails.application.routes.draw do
  get("/square_root/:NUMBER", { :controller => "calculations", :action => "square" })
  get("/random/:MIN/:MAX", { :controller => "calculations", :action => "random" })
  get("/payment/:RATE/:TIME/:PRINCIPAL_VALUE", { :controller => "calculations", :action => "payment" })
end
