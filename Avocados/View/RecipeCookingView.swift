//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Denis Yaremenko on 17.04.2024.
//

import SwiftUI

struct RecipeCookingView: View {
    
    // MARK: - Properties
    var recipe: Recipe
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Serves: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Serves: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}


