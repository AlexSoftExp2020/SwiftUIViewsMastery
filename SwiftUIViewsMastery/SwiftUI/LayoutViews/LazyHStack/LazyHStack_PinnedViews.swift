//
//  LazyHStack_PinnedViews.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

//struct LazyHStack_PinnedViews: View {
//    @State private var teams = Data.getTeams()
//    
//    var body: some View {
//        VStack(spacing: 20) {
//            HeaderView("LazyHStack",
//                       subtitle: "Pinned Views",
//                       desc: "LazyHStacks can also have section headers and section footers that can be pinned so they only scroll when the next header/footer comes.")
//            
//            Spacer()
//            
//            ScrollView(.horizontal) {
//                LazyHStack(spacing: 5, pinnedViews: [.sectionHeaders, .sectionFooters]) {
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
//    LazyHStack_PinnedViews()
//}
