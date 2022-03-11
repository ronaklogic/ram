class EmployeesController < ApplicationController
  EMPLOYEE_PER_PAGE = 3
  def index
    @employees = Employee.all
    @page = params.fetch(:page, 0).to_i
    @employees = Employee.limit(EMPLOYEE_PER_PAGE).offset(@page)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new 
  end

  def create  
    @employee = Employee.new(user_params)

    if @employee.save 
      redirect_to @employee 
    else
      render :new 
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update 
    @employee = Employee.find(params[:id])
    authorize employee
    if @employee.update(user_params)
      redirect_to @employee
    else 
      render :edit 
    end
  end

  def destroy 
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end 

  def update 
    @employee = Employee.find(params[:id])
    if @employee.update(user_params)
      redirect_to employees_path
    else
      render :edit
    end 
  end

  private
  def user_params
    params.require(:employee).permit(:name, :dob, :gender, :city, :address, :mobile_no, :hobby=>[])
  end
end
