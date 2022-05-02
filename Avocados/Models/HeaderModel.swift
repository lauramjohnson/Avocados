//
//  HeaderModel.swift
//  Avocados
//
//  Created by Laura Johnson on 4/30/22.
//

import SwiftUI

// MARK:  - Header model

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
