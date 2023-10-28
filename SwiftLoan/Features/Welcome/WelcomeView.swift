//
//  WelcomeView.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        MainBackground {
            VStack{
                AppLogo()
                Spacer()
                
                Text("Welcome!")
                    .font(.largeTitle)
                    .bold()
                    .padding(.vertical)
                
                CustomButton(
                    action: {
                        
                    },
                    title:"Sign in",
                    foregroundColor: Color("Secondary-Color"),
                    backgroundColor: .white)
                .padding(.horizontal,8 * 6)
                
                Button(
                    action: {},
                    label: {
                        Text("or ")
                        +
                        Text("Create an account")
                            .underline()
                            .font(.callout)
                    })
                .padding()
                
                Spacer()
                
            }
            .padding()
            .foregroundStyle(.white)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
