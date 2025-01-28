require "sinatra"
require "sinatra/reloader"

# Redirect root to addition calculator
get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params[:first_num].to_f
  @second_num = params[:second_num].to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

# Subtraction Form
get("/subtract") do
  erb(:subtraction_form)
end

get("/wizard_subtract") do
  @first_num = params[:first_num].to_f
  @second_num = params[:second_num].to_f

  @result = @first_num - @second_num
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num = params[:first_num].to_f
  @second_num = params[:second_num].to_f

  @result = @first_num * @second_num
  erb(:mult_result)
end

get "/divide" do
  erb :divform
end

get "/wizard_divide" do
  @first_num = params[:first_num].to_f
  @second_num = params[:second_num].to_f

  if @second_num.zero?
    @result = "Undefined (division by zero is not allowed)"
  else
    @result = @first_num / @second_num
  end

  erb :div_result
end
