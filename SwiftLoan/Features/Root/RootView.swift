//
//  RootView.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 14/04/1445 AH.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView{
            NavigationStack{
                NavigationLink(value: 1){
                    HomeView()
                }
                .tint(.black)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "person.fill")
                            .foregroundStyle(.white)
                    }
                    ToolbarItem(placement: .principal) {
                        Text("Home")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                                Image(systemName: "bell.fill")
                                    .foregroundStyle(.white)
                    }
                }
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            NavigationStack{
                NavigationLink(value: 1){
                    NewLoanView()
                }
                .tint(.black)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "person.fill")
                            .foregroundStyle(.white)
                    }
                    ToolbarItem(placement: .principal) {
                        Text("Home")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                                Image(systemName: "bell.fill")
                                    .foregroundStyle(.white)
                    }
                }
            }
            .tabItem {
                Label("New Loan", systemImage: "doc.text.fill")
            }
            HomeView()
                .tabItem {
                    Label("Overview", systemImage: "chart.xyaxis.line")
                }
        }
        
    }
}

#Preview {
    RootView()
}
