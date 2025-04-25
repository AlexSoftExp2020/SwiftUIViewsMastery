//
//  NavLink_isPresented.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.04.2025.
//

import SwiftUI

struct NavLink_isPresented: View {
    @State private var showSheet = false
    @State private var navigate = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Show Sheet") { showSheet.toggle() }
            }
            .navigationTitle("Navigate When True")
            .sheet(isPresented: $showSheet) {
                VStack(spacing: 16.0) {
                    NavigationLink(destination: Text("Destination from Link")) {
                        Text("Navigation Link")
                    }
                    Button("Button Link") {
                        showSheet = false
                        navigate = true
                    }
                }
                .presentationDetents([.height(240)])
            }
            .navigationDestination(isPresented: $navigate) {
                Text("Destination form Button")
            }
        }
        .font(.title)
    }
}

#Preview {
    NavLink_isPresented()
}
