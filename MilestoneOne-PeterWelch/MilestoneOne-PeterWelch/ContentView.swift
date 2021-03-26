//
//  ContentView.swift
//  MilestoneOne-PeterWelch
//
//  Created by Pete Welch on 14/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Butter Chicken")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom)
            
            Image("butterChickenx3")
                .cornerRadius(20)
            
            Text("Butter Chicken")
                .font(.body)
                .fontWeight(.thin)
                .multilineTextAlignment(.leading)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

