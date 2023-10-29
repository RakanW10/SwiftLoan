//
//  NewLoanViewModel.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 14/04/1445 AH.
//

import Foundation

class NewLoanViewModel: ObservableObject{
    @Published var loanAmount: Double = 0
    @Published var loanTerm: Int = 0
}
