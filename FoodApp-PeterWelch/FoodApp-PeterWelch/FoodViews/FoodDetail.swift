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
    //@State var myMeal: FoodItem = FoodDish.dishes[2]

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
                .onMove(perform: move)
                .onDelete(perform: delete)
                Button("Add Ingredient", action: add)
                    .background(Color(.green))

            }
            Section(header: Text("Recipe"))
            {
                Text(myMeal.food_recipe)
            }
        }
        .toolbar
        {
            ToolbarItem(placement: .primaryAction)
            {
                EditButton()
            }
        }
    }
    
    // Move Function
    private func move(from source: IndexSet, to destination: Int)
    {
        myMeal.food_ingredients.move(fromOffsets: source, toOffset: destination)
    }
    
    // Edit Function
    private func edit()
    {
        //
    }
    
    // Add Function
    private func add()
    {
        myMeal.food_ingredients.append("New Ingredient")
    }
    
    // Delete Function
    private func delete(at offsets: IndexSet)
    {
        myMeal.food_ingredients.remove(atOffsets: offsets)
    }
}

// PREVIEW CONTENT ONLY
struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FoodDetail()
        }
    }
}
