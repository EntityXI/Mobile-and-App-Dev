//
//  Food.swift
//  FoodApp-PeterWelch
//
//  Created by Pete Welch on 13/4/21.
//

import Foundation
import SwiftUI

// Food struct, where all attributes related to the food are located! decided to use struct over class as unsure how to init uuid() in a class hmm. To learn!
struct FoodItem: Codable, Equatable, Identifiable
{
    // variables with default values assigned
    var id: UUID = UUID()
    var food_name: String = "Unknown Food"
    var food_description: String = "Unknown Description"
    var food_story: String = "Unknown Story"
    var food_ingredients: [String] = ["Unknown Ingredient"]
    var food_recipe: String = "Unknown recipe"
    var food_image: String = "placeholder"
}


var firstDish = FoodItem(food_name: "Butter Chicken", food_description: "Test Butter Chicken Description", food_story: "Test Butter Chicken Story", food_ingredients: ["Butter Chicken Ingredient 1", "Butter Chicken Ingredient 2", "Butter Chicken Ingredient 3", "Butter Chicken Ingredient 4"], food_recipe: "Test Butter Chicken Recipe")

var secondDish = FoodItem(food_name: "Sausage Curry", food_description: "Test Sausage Curry Description", food_story: "Test Sausage Curry Story", food_ingredients: ["Sausage Curry Ingredient 1", "Sausage Curry Ingredient 2", "Sausage Curry Ingredient 3", "Sausage Curry Ingredient 4", "Sausage Curry Ingredient 5"], food_recipe: "Test Sausage Curry Recipe")

var thirdDish = FoodItem(food_name: "Salmon and vege", food_description: "Test Salmon Description", food_story: "Test Salmon Story", food_ingredients: ["Salmon and vege Ingredient 1", "Salmon and vege Ingredient 2"], food_recipe: "Test Salmon Recipe")


var dishes = [firstDish, secondDish, thirdDish]

  
