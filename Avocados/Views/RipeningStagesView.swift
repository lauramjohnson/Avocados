//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Laura Johnson on 4/30/22.
//

import SwiftUI

struct RipeningStagesView: View {
    var ripeningStages = ripeningStagesData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 40) {
                ForEach(ripeningStages) { stage in
                    RipeningView(ripeningStage: stage)
                }
            }
            .padding(.horizontal, 40)
        }
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
