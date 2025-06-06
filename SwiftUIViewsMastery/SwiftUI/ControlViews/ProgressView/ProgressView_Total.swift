//
//  ProgressView_Total.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI

struct ProgressView_Total: View {
    @State private var total = 0.5
    @State private var progress = 0.4
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("ProgressView",
                       subtitle: "Adjusting the Total",
                       desc: "By default, the progress view's range is from 0 to 1. You can change the end total amount though (to something less than 1).",
                       back: .blue,
                       textColor: .white)
            ProgressView("Files downloaded: \(Int(progress/total * 100))%",
                         value: progress,
                         total: total)
            .padding()
        }
        .font(.title)
    }
}

#Preview {
    ProgressView_Total()
}
