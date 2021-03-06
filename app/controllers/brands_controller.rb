class BrandsController < ApplicationController

    def index
        @brands = Brand.all
    end
    
    def show 
        @brand = Brand.find_by_id(params[:id])
    end
    
    def new 
        @brand = Brand.new
        3.times { @brand.shoes.build }
    end
    
    def create 
        @brand = Brand.new(brand_params)
        if @brand.save 
            redirect_to brands_path
        else
            render :new
        end
    end
    
    def edit 
        @brand = Brand.find_by_id(params[:id])
    end 
    
    def update 
        @brand = Brand.find_by_id(params[:id])
        if @brand.valid? 
            @brand.update(brand_params)
            redirect_to brand_path(@brand)
        else 
            render :edit
        end
    end 
    
    def destroy 
        @brand = Brand.find_by_id(params[:id])
    end
    
    private 
    
    def brand_params
        params.require(:brand).permit(:name, :year_founded, shoes_attributes: [:color, :price, :condition])
    end
    
    end
