//
//  CustomButton.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI

struct CustomButton: View {
    let action: () -> ()
    let title: String
    let foregroundColor: Color
    let backgroundColor: Color
    var body: some View {
        Button(
            action: action,
            label: {
                Text(title)
                    .font(.title3)
                    .bold()
                    .foregroundStyle(foregroundColor)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 8 * 4)
                            .foregroundStyle(backgroundColor)
                    )
            }
        )
    }
}
