//
//  RipeStageView.swift
//  Avocados
//
//  Created by Denis Yaremenko on 15.04.2024.
//

import SwiftUI

struct RipeStageView: View {
    // MARK: - Properties
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    RipeStageView()
}
