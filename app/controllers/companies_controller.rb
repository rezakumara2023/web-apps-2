class CompaniesController < ApplicationController

  # TODO:
  def index
    # get any data in
    @companies = Company.all
    # handle business logic
    # render html file views/companies/index.html.erb
  end

  def show
    @company = Company.find_by({ "id" => params["id"] })
    # render html file views/companies/show
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new
    @company["name"] = params["company"]["Name"]
    @company["city"] = params["company"]["city"]
    @company["state"] = params["company"]["state"]
    @company.save
    redirect_to "/companies"
  end
end
