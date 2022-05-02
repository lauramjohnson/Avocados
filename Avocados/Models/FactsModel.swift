//
//  FactsModel.swift
//  Avocados
//
//  Created by Laura Johnson on 5/1/22.
//

import SwiftUI

struct Fact: Identifiable {
    let id = UUID()
    let image: String
    let content: String
}
