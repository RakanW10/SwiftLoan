//
//  SignInFragment.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI
struct SignInFragment: View {
    @ObservedObject var vm: WelcomeViewModel
    var body: some View {
        VStack(spacing: 32){
            
            UnderlinedTextField(
                text: $vm.emailTextField,
                placeholder: "Email")
                
            UnderlinedTextField(
                text: $vm.passwordTextField,
                placeholder: "Password",
                isSecure: true,
                trailingTitle: "Forgot it?"){
                    //TODO: Forgot password logic
                }
                
            CustomButton(
                action: {
                    // TODO: Sign in logic
                },
                title:"Sign in",
                foregroundColor: Color("Secondary-Color"),
                backgroundColor: .white)
            
            Button(
                action: {
                    withAnimation {
                        vm.pageState = WelcomeState.signUp
                    }
                    
                },
                label: {
                    Text("Don't have an account? ")
                    +
                    Text("Register")
                        .underline()
                        .font(.callout)
                })
        }
        .padding(.horizontal,8 * 5)
        

    }
}


