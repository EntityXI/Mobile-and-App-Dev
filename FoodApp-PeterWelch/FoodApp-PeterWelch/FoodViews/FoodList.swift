//
//  FoodList.swift
//  FoodApp-PeterWelch
//
//  Created by Pete Welch on 13/4/21.
//

import Foundation
import SwiftUI

let appName: String = "Food App"


struct FoodList: View
{
    var body: some View
    {
        NavigationView
        {
            VStack
            {
                List(dishes)
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
                                .baselineOffset(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                            Text(dish.food_description)
                                .italic()
                            }
                        }
                    }
                }
            }
            .navigationTitle(Text(appName))
            .padding(.vertical, 30.0)
            .toolbar
            {
                ToolbarItem(placement: .primaryAction)
                {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarLeading)
                {
                    Button("Add Food", action: addFood)
                }
            }
        }
    }
}

//Add Item Button
func addFood()
{
    dishes.append(FoodItem())
    
    print(dishes)
}

    // Delete Function
func deleteFood(at offsets: IndexSet)
{
    dishes.remove(atOffsets: offsets)
}

       
    
    
struct FoodList_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}


//            List
//            {
//                ForEach(dishes)
//                {
//                    dish in NavigationLink(destination: FoodDetail(myMeal: dish))
//                    {
//                        HStack
//                        {
//                            Image(dish.food_image)
//
//                            VStack
//                            {
//                                Text(dish.food_name)
//                                    .bold()
//                                    .baselineOffset(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
//                                Text(dish.food_description)
//                                    .italic()
//                            }
//
//                        }
//                    }
//                }
//                .onDelete(perform: deleteFood)
//            }
//            .navigationTitle(Text(appName))
//            .padding(.vertical, 30.0)
//            .toolbar {
//                ToolbarItem(placement: .primaryAction)
//                {
//                    EditButton()
//                }
//                ToolbarItem(placement: .navigationBarLeading)
//                {
//                    Button("Add Food", action: addFood)
//                }
//            }

