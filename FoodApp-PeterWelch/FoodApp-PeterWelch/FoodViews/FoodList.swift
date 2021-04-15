//
//  FoodList.swift
//  FoodApp-PeterWelch
//
//  Created by Pete Welch on 13/4/21.
//

import Foundation
import SwiftUI

struct FoodList: View
{
    
    var body: some View
    {

        NavigationView
        {
            List
            {
                ForEach(Dish.dishes)
                {
                    dish in NavigationLink(destination: FoodDetail(myMeal: dish))
                    {
                        HStack
                        {
                            Image(dish.food_image)
                                                       
                            VStack
                            {
                                Text(dish.food_name)
                                    .bold()
                                Text(dish.food_description)
                                    .italic()
                            }
                        }
                    }
                }
            }
            .padding(.vertical, 30.0)
            .navigationBarTitle(Text("Food App"))
        }
    }
}

struct FoodList_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
