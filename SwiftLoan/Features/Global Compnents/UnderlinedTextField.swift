//
//  UnderlinedTextField.swift
//  SwiftLoan
//
//  Created by Rakan Alotaibi on 13/04/1445 AH.
//

import SwiftUI


struct UnderlinedTextField: View {
    @Binding var text: String
    let placeholder: String
    var isSecure: Bool = false
    var trailingTitle: String = ""
    var trailingAction: () -> () = {}
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack(alignment:.top){
                if isSecure {
                   SecureField("", text: $text)
                        .focused($isFocused)
                        .padding(.bottom, 8)
                        .placeholder(when: text.isEmpty, placeholder: {
                            Text(placeholder)
                                .foregroundColor(.white.opacity(0.5))
                        })
                }
                else{
                    TextField("", text: $text)
                        .focused($isFocused)
                        .padding(.bottom, 8)
                        .placeholder(when: text.isEmpty, placeholder: {
                            Text(placeholder)
                                .foregroundColor(.white.opacity(0.5))
                        })
                }
                
                if !trailingTitle.isEmpty{
                    Button(action: trailingAction, label: {
                        Text(trailingTitle)
                            .foregroundColor(.white.opacity(0.5))
                    })
                }
                
            }
            Rectangle()
                .frame(height: 1)
                .foregroundColor((isFocused || !text.isEmpty) ? .white : .gray)
                
        }
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .topLeading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
