//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Laura Johnson on 5/1/22.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
            }
            
            Group {
                // title
                Text(recipe.title)
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(.top, 10)
                // ratings
                RecipeRatingView(recipe: recipe)
                
                // cooking
                RecipeCookingView(recipe: recipe)
                
                // ingredients
                Text("Ingredients")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .leading, spacing: 5) {
                    ForEach(recipe.ingredients, id: \.self) { ingredient in
                        VStack(alignment: .leading, spacing: 5) {
                            Text(ingredient)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Divider()
                                .padding(.vertical, 3)
                        }
                    }
                }
                
                // instructions
                Text("Instructions")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ForEach(recipe.instructions.indices, id: \.self) { i in
                    HStack(alignment: .top, spacing: 10) {
                        Image(systemName: "\(i+1).circle")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                            .imageScale(.large)
                            .font(Font.title.weight(.ultraLight))
                            .foregroundColor(Color("ColorGreenAdaptive"))
                        Text(recipe.instructions[i])
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .font(.system(.body, design: .serif))
                            .frame(alignment: .top)
                        Spacer()
                    }
                }
                
                Spacer()
                    .frame(height: 24)
                
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
        }
        .edgesIgnoringSafeArea(.all)
        .overlay(
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                        .foregroundColor(Color.white)
                        .shadow(radius: 8)
                        Spacer()
                    }
                }
                .padding(.top, 14)
                .padding(.trailing, 14)
            })
        )
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[3])
    }
}
