//
//  CenterButton.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 14/04/1445 AH.
//

import SwiftUI

struct CenterButton: View {
    let systemImage: String
    let title: String
    let action: () -> ()
    var body: some View {
        VStack{
            Image(systemName: systemImage)
                .resizable()
                .foregroundStyle(Color("Primary-Color"))
                .scaledToFit()
                .frame(width: 32,height: 32)
            
            Text(title)
                .font(.caption)
                .opacity(0.5)
                .multilineTextAlignment(.center)
                .frame(alignment: .center)
            
        }
        .padding(8)
        .frame(maxWidth: 100)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .shadow(radius: 3)
        )
        .onTapGesture(perform:action)
        
    }
}
