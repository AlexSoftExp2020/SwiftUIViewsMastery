//
//  GroupBox_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 13.04.2025.
//

import SwiftUI

struct GroupBox_Intro: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            HeaderView("GroupBox",
                       subtitle: "Introduction",
                       desc: "You can use the GroupBox to combine views that are related.")
            
            GroupBox {
                Text("Login")
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $username)
                    .textFieldStyle(.roundedBorder)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    GroupBox_Intro()
}
