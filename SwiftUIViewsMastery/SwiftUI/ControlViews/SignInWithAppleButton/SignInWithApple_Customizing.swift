//
//  SignInWithApple_Customizing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 09/10/2025.
//

import SwiftUI
import _AuthenticationServices_SwiftUI

struct SignInWithApple_Customizing: View {
    var body: some View {
        ZStack {
            Color("ColorBackground")
                .ignoresSafeArea()
            VStack {
                Text("black")
                SignInWithAppleButton(.signIn,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                .signInWithAppleButtonStyle(.black)
                .frame(height: 50)
                Text("whiteOutline")
                SignInWithAppleButton(.continue,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                .signInWithAppleButtonStyle(.whiteOutline)
                .frame(height: 50)
                Text("white")
                SignInWithAppleButton(.signUp,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                .signInWithAppleButtonStyle(.white)
                .frame(height: 50)
                .shadow(radius: 8, y: 12)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    SignInWithApple_Customizing()
}
