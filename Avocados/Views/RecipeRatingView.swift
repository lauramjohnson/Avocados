//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Laura Johnson on 5/1/22.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(Color.yellow)
            }
            if recipe.rating < 5 {
                ForEach((0...(4 - recipe.rating)).reversed(), id: \.self) { item in
                    Image(systemName: "star")
                        .font(.body)
                    .foregroundColor(Color.gray)
                }
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[4])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
