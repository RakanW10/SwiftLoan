//
//  ProgressBar.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 14/04/1445 AH.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var maxValue: Double
    @Binding var currentValue: Double
    var progress: Double {
        currentValue / maxValue
    }
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0 , to:  CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color("Green-Color"))
                .padding()
                .background(
                    Circle()
                        .fill(.white)
                )
                .shadow(radius: 3)
            // Content
            VStack{
                Text("Current loan balance")
                    .font(.callout)
                    .opacity(0.5)
                    .frame(width: 100, alignment: .center)
                    .multilineTextAlignment(.center)
                
                Text(String(format: "$%.1f", currentValue))
                    .font(.title2)
                    
                    .bold()
                    .foregroundStyle(Color("Primary-Color"))
                
                Text("Due on 01:15:2019")
                    .font(.callout)
                    .opacity(0.5)
                    .frame(width: 100, alignment: .center)
                    .multilineTextAlignment(.center)
            }
        }
    }
}


#Preview {
    ProgressBar(maxValue: .constant(1000), currentValue: .constant(700))
}
