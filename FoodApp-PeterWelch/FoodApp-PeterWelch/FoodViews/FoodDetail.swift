//
//  FoodDetail.swift
//  FoodApp-PeterWelch
//
//  Created by Pete Welch on 13/4/21.
//

import SwiftUI

struct FoodDetail: View
{
    @State var myMeal: FoodItem = FoodItem()
    //@State var myMeal: FoodItem = Dish.dishes[0]

    var body: some View
    {
        List
        {
            Image(myMeal.food_image)
            Section(header: Text("Name"))
            {
                Text(myMeal.food_name)
            }
            Section(header: Text("Description"))
            {
                Text(myMeal.food_description)
            }
            Section(header: Text("Story"))
            {
                Text(myMeal.food_story)
            }
            Section(header: Text("Ingredients"))
            {
                ForEach(self.myMeal.food_ingredients, id: \.self)
                {
                    ingredient in Text(ingredient)
                }
            }
            Section(header: Text("Recipe"))
            {
                Text(myMeal.food_recipe)
            }
        }

    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FoodDetail()
        }
    }
}
