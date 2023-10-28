//
//  WelcomeView.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI

struct WelcomeView: View {
    @StateObject var vm = WelcomeViewModel()
    
    var body: some View {
        MainBackground {
            VStack{
                AppLogo()
                Spacer()
                
                switch(vm.pageState){
                case .welcome:
                    WelcomeFragment(pageState: $vm.pageState)
                case .signIn:
                    SignInFragment(vm: vm)
                case .signUp:
                    SignUpFragment(vm: vm)
                }
                
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
