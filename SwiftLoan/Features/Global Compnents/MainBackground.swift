//
//  MainBackground.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI

struct MainBackground<Content>: View where Content: View {
    let child: () -> Content

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        Color("Primary-Color"),
                        Color("Secondary-Color")
                    ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            child()
        }
    }
}
