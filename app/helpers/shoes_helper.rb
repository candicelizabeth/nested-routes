module ShoesHelper
    def shoe_price
         if @shoe.price > 50 
            content_tag(:h6, "Shoe Price: #{number_to_currency(@shoe.price)}")
        else 
            content_tag(:h1, "Shoe Price: #{number_to_currency(@shoe.price)}")
        end 
    end

    def brand_exists_header 
        if @brand 
           content_tag(:h1, "#{@brand.name} Shoes:")
        else 
            content_tag(:h1, "All of the Shoes!!")
        end 
    end

    def brand_exists_new_header 
        if @brand 
           content_tag(:h1, "Create #{@brand.name} Shoe:")
        else 
            content_tag(:h1, "Create Shoe:")
        end 
    end

    def brand_fields(f) 
        if @brand 
             f.hidden_field :brand_id, value: @brand.id 
        else 
             render partial: "brand_fields", locals: { f: f } 
        end 
    end
end