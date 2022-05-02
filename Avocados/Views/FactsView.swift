//
//  FactsView.swift
//  Avocados
//
//  Created by Laura Johnson on 5/1/22.
//

import SwiftUI

struct FactsView: View {
    let fact: Fact
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 56)
                .padding(.trailing, 8)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(Color.white)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                        .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
        }
    }
}

struct FactsView_Previews: PreviewProvider {
    static var facts: [Fact] = factsData
    static var previews: some View {
        Group {
            FactsView(fact: facts[1])
                .previewLayout(.sizeThatFits)
                .padding(72)
            FactsView(fact: facts[1]).preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding(72)

        }

    }
}
