class Admin::TestsController < ApplicationController

 before_action :set_tests, only: %i[ index update_inline ]    
 before_action :find_test, only: %i[ show edit update destroy start update_inline]


  def index

  end  
  
  def show
  
  end

  def new
    @test = Test.new
  end
  
  def edit
  end
  
  def create
    @test = current_user.created_tests.new(test_params)
    if @test.save
      redirect_to admin_tests_path 
      flash[:success] = t('.success')
    else
      render :new
    end
  
  end

  def update

    if @test.update(test_params)
      redirect_to @test
      flash[:success] = t('.success')
    else
      render :edit
    end
  end   

  def update_inline
    if @test.update(test_params)
      redirect_to admin_tests_path
    else
      render :index
    end    
  end  

  def destroy
    @test.destroy
    redirect_to admin_tests_path
    flash[:success] = t('.success')
  end
  
  def start
    current_user.tests.push(@test)
    redirect_to current_user.test_passage(@test)
  end

  private

  def set_tests
    @tests = Test.all
  end  

  def find_test
    @test = Test.find(params[:id])
  end
  
  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end 
   
end
