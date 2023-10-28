//
//  SignUpFragment.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI


struct SignUpFragment: View {
    @ObservedObject var vm: WelcomeViewModel
    var body: some View {
        VStack(spacing: 32){
            
            UnderlinedTextField(
                text: $vm.nameTextField,
                placeholder: "Name")
            
            UnderlinedTextField(
                text: $vm.emailTextField,
                placeholder: "Email")
                
            UnderlinedTextField(
                text: $vm.passwordTextField,
                placeholder: "Password",
                isSecure: true
                )
            CustomButton(
                action: {
                    // TODO: Sign in logic
                },
                title:"Sign Up",
                foregroundColor: Color("Secondary-Color"),
                backgroundColor: .white)
            
            Button(
                action: {
                    withAnimation {
                        vm.pageState = WelcomeState.signIn
                    }
                    
                },
                label: {
                    Text("Do have an account? ")
                    +
                    Text("Login")
                        .underline()
                        .font(.callout)
                })
        }
        .padding(.horizontal,8 * 5)
    }
}
