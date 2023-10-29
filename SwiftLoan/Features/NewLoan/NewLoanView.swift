//
//  NewLoanView.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 14/04/1445 AH.
//

import SwiftUI

struct NewLoanView: View {
    var body: some View {
        @ObservedObject var vm = NewLoanViewModel()
            VStack{
                // Upper Side
                MainBackground{
                    VStack(alignment: .leading,spacing: 16){
                        Text("Fill in the following optinos")
                            .foregroundStyle(.white)
                            .font(.title3)
                            .bold()
                        CustomSlider(loanAmount: $vm.loanAmount)

                        CustomSlider(loanAmount: $vm.loanAmount)

                            
                    }//: Upper VStack
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                }
                // Lower Side
                ZStack{
                    Color("Background-Color")
                    VStack(alignment: .leading){
                        QuickDetailsCard(title: "Loan amount", trailingText: String(format: "$%.2f", 6000.0))
                        QuickDetailsCard(title: "Next payment", trailingText: "01.10.2019")
                        QuickDetailsCard(title: "Your Debt",  trailingText: String(format: "$%.2f", 500.0))
                        CustomButton(
                            action: {
                                
                            }, title: "Get money",
                            foregroundColor: .white,
                            backgroundColor: Color("Primary-Color")
                        )
                        .padding(.vertical)
                        .padding(.horizontal, 48)
                    } //: Lower VStack
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                } //: ZStack
                
            } //: VStack
        
    }
}

#Preview {
    NewLoanView()
}

struct CustomSlider: View {
    @Binding var loanAmount: Double
    var body: some View {
        VStack{
            HStack{
                Text("Loan amount")
                Spacer()
                Text(String(format: "$%.2f", loanAmount)
                )
            }
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)

            Slider(value: $loanAmount, in: 500...10000)
                .tint(.white)
                .onChange(of: loanAmount) { _,newValue in
                    loanAmount = newValue
                    print(newValue)
                }
            HStack{
                Text(String(format: "$%.0f", 500.0))
                Spacer()
                Text(String(format: "$%.0f", 10000.0))
            }
            .foregroundStyle(.white)
            .opacity(0.5)
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
    }
}
