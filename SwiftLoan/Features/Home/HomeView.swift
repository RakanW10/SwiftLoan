//
//  HomeView.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var vm = HomeViewModel()
    var body: some View {
        ZStack{
            VStack{
                // Upper Side
                MainBackground{
                    VStack{
                        ProgressBar(
                            maxValue: $vm.maxCircularValue,
                            currentValue: $vm.currentValue)
                        .padding(.horizontal, 70)
                        Spacer()
                    }//: Upper VStack
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                // Lower Side
                ZStack{
                    Color("Background-Color")
                    VStack(alignment: .leading){
                        Text("More details about your current loan")
                            .opacity(0.5)
                        QuickDetailsCard(title: "Loan amount", trailingText: String(format: "$%.2f", 6000.0))
                        QuickDetailsCard(title: "Next payment", trailingText: "01.10.2019")
                        QuickDetailsCard(title: "Your Debt",  trailingText: String(format: "$%.2f", 500.0))
                    } //: Lower VStack
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                } //: ZStack
                
            } //: VStack
            HStack(spacing: 16){
                CenterButton(systemImage:"swift", title: "Make a loan payment") {
                    
                }
                CenterButton(systemImage:"doc.text.fill", title: "Issue a new loan") {
                    
                }
            } //: HStack
            
        } //: ZStack
    }
}


#Preview {
    HomeView()
}

struct QuickDetailsCard: View {
    let title: String
    let trailingText: String
    var body: some View {
        HStack{
            Text(title)
            Spacer()
            Text(trailingText)
                .foregroundStyle(Color("Primary-Color"))
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.white)
            
        )
    }
}
