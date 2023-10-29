//
//  HomeViewModel.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 14/04/1445 AH.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    @Published var maxCircularValue: Double = 700
    @Published var currentValue: Double = 500
}
