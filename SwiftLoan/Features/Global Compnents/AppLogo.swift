//
//  AppLogo.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI

struct AppLogo: View {
    var body: some View {
        VStack{
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            Text("SwiftLoan")
                .font(.title2)
                .bold()
        }
    }
}
#Preview {
    AppLogo()
}
