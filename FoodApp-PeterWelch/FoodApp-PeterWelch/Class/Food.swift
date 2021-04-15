//
//  Food.swift
//  FoodApp-PeterWelch
//
//  Created by Pete Welch on 13/4/21.
//

import Foundation

// Food struct, where all attributes related to the food are located! decided to use struct over class as unsure how to init uuid() in a class hmm. To learn!
struct FoodItem: Codable, Equatable, Identifiable
{
    // variables with default values assigned
    var id: UUID = UUID()
    var food_name: String = ""
    var food_description: String = ""
    var food_story: String = ""
    var food_ingredients: [String] = []
    var food_recipe: String = ""
    var food_image: String = ""
}
