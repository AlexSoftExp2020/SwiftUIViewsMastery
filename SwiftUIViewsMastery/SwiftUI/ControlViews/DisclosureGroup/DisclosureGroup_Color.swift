//
//  DisclosureGroup_Color.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 06.04.2025.
//

import SwiftUI

struct DisclosureGroup_Color: View {
    @State private var disclosureExpanded = true
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("DisclosureGroup",
                       subtitle: "Color",
                       desc: "You can change the color of the chevron and label with the use of the tint modifier.")
            VStack(spacing: 20) {
                DisclosureGroup("Color",
                                isExpanded: $disclosureExpanded) {
                    Text("If you want to expand a DisclosureGroup programmatically you can bind a property to the isExpanded parameter.")
                        .font(.title2)
                        .padding()
                }
                                .tint(.orange)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.orange)
                                    .opacity(0.1))
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    DisclosureGroup_Color()
}
