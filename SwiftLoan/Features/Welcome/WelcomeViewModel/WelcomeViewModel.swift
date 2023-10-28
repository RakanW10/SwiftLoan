//
//  WelcomeViewModel.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI

enum WelcomeState{
    case welcome, signIn, signUp
}

class WelcomeViewModel: ObservableObject{
    @Published var pageState = WelcomeState.welcome
    @Published var nameTextField: String = ""
    @Published var emailTextField: String = ""
    @Published var passwordTextField: String = ""
}
