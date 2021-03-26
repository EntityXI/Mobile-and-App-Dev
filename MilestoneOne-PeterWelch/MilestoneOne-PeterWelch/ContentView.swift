//
//  ContentView.swift
//  MilestoneOne-PeterWelch
//
//  Created by Pete Welch on 14/3/21.
//

import SwiftUI

struct ContentView: View {
    /*-Variables- */

    let app_title = "Favourite Foods App"
    let food_image = "butterChickenx3"
    let food_title = "Butter Chicken"
    let food_description = "Prepared in a buttery gravy with the addition of cream gives the curry sauce a silky smooth rich texture."
    let food_story = "Butter Chicken has been a loved food since first introduced to the dish back in 2011 - Pete W"

    /*-Functions- */
    func text_output(txt: String) -> String{
        let output_this_text = txt
        
        return output_this_text
    }
    
      
    var body: some View {
        VStack (){
            Text(text_output(txt: app_title))
                .fontWeight(.black)
                .foregroundColor(Color.black)
                .padding(20)
                .font(.title)
            
            ZStack{
                Rectangle()
                    .fill(Color.black  )
                    .frame(height: 200)
                Image(food_image)
                    .cornerRadius(20)
            }
            
            Text(text_output(txt: food_title))
                .font(.title2)
                .fontWeight(.light)
   
            Divider()
            
            Text(text_output(txt: food_description))
                .italic()
                .font(.body)
                .fontWeight(.thin)
                .padding(20)
            
            Text(text_output(txt: food_story))
                .font(.body)
                .fontWeight(.thin)
                .padding(20)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
            .preferredColorScheme(.light)
    }
}

