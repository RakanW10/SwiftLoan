//
//  WelcomeFragment.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI

struct WelcomeFragment: View {
    @Binding var pageState: WelcomeState
    var body: some View {
        VStack{
            Text("Welcome!")
                .font(.largeTitle)
                .bold()
                .padding(.vertical)
            
            CustomButton(
                action: {
                    withAnimation {
                        pageState = WelcomeState.signIn
                    }
                    
                },
                title:"Sign in",
                foregroundColor: Color("Secondary-Color"),
                backgroundColor: .white)
            .padding(.horizontal,8 * 6)
            
            Button(
                action: {
                    withAnimation {
                        pageState = WelcomeState.signUp
                    }
                    
                },
                label: {
                    Text("or ")
                    +
                    Text("Create an account")
                        .underline()
                        .font(.callout)
                })
            .padding()
        }
    }
}


#Preview {
    WelcomeFragment(pageState: .constant(WelcomeState.welcome))
}
