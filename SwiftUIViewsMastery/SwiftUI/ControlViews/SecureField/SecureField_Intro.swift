//
//  SecureField_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.05.2025.
//

import SwiftUI

struct SecureField_Intro: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Image("Logo")
            
            Spacer()
            
            Text("SecureField")
                .font(.largeTitle)
            
            Text("Introduction")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text("SecureFields, like TextFields, need to bind to a local variable.")
            
            TextField("user name", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            SecureField("password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    SecureField_Intro()
}
