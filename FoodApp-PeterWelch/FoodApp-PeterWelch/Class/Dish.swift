//
//  Dish.swift
//  FoodApp-PeterWelch
//
//  Created by Pete Welch on 13/4/21.
//

import Foundation

struct Dish
{
    // Dish data to display. These are public constants for use
    static let firstDish = FoodItem(id: UUID(), food_name: "Butter Chicken", food_description: "Test Butter Chicken Description", food_story: "Test Butter Chicken Story", food_ingredients: ["Butter Chicken Ingredient 1", "Butter Chicken Ingredient 2", "Butter Chicken Ingredient 3", "Butter Chicken Ingredient 4"], food_recipe: "Test Butter Chicken Recipe", food_image: "placeholder")
        
    static let secondDish = FoodItem(id: UUID(), food_name: "Sausage Curry", food_description: "Test Sausage Curry Description", food_story: "Test Sausage Curry Story", food_ingredients: ["Sausage Curry Ingredient 1", "Sausage Curry Ingredient 2", "Sausage Curry Ingredient 3", "Sausage Curry Ingredient 4", "Sausage Curry Ingredient 5"], food_recipe: "Test Sausage Curry Recipe", food_image: "placeholder")
        
    static let thirdDish = FoodItem(id: UUID(), food_name: "Salmon and vege", food_description: "Test Salmon Description", food_story: "Test Salmon Story", food_ingredients: ["Salmon and vege Ingredient 1", "Salmon and vege Ingredient 2"], food_recipe: "Test Salmon Recipe", food_image: "placeholder")

    
    static let dishes = [firstDish, secondDish, thirdDish]
}

