//
//  GroupBox_AsCards.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 14.04.2025.
//

import SwiftUI

struct GroupBox_AsCards: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("GroupBox",
                       subtitle: "As Cards",
                       desc: "You could use the GroupBox as a 'card' in your UI design.",
                       back: .blue,
                       textColor: .white)
            
            ScrollView {
                ForEach(0..<10) { item in
                    GroupBox {
                        HStack {
                            Image(systemName: "person.circle")
                                .imageScale(.large)
                            
                            VStack(alignment: .leading) {
                                Text("User Name")
                                Text("User Address")
                                    .font(.body)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                .padding()
            }
        }
        .font(.title)
    }
}

#Preview {
    GroupBox_AsCards()
}
