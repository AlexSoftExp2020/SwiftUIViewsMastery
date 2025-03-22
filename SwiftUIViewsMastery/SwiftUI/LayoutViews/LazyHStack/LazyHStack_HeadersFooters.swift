//
//  LazyHStack_HeadersFooters.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 22.03.2025.
//

import SwiftUI

//struct LazyHStack_HeadersFooters: View {
//    @State private var teams = Data.getTeams()
//    var body: some View {
//        VStack(spacing: 10.0) {
//            HeaderView("LazyHStack",
//                       subtitle: "Headers & Footers",
//                       desc: "Using the Section view, you can add a header and footer inside a LazyHStack.")
//            Spacer()
//            ScrollView(.horizontal) {
//                LazyHStack(spacing: 5) {
//                    ForEach(teams) { team in
//                        Section {
//                            ForEach(team.people) { person in
//                                Image("\(person.imageName)")
//                                    .resizable()
//                                    .frame(width: 100)
//                                    .padding(.bottom, 8)
//                            }
//                        } header: {
//                            TeamHeaderView(team: team)
//                        } footer: {
//                            TeamFooterView(team: team)
//                        }
//                    }
//                }
//            }
//            .frame(height: 108)
//            
//            Spacer()
//        }
//        .font(.title)
//    }
//}
//
//#Preview {
//    LazyHStack_HeadersFooters()
//}
