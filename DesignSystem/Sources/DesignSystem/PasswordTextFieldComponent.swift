//
//  PasswordTextFieldComponent.swift
//  DesignSystem
//
//  Created by Francisco Pereira on 12/07/2025.
//
import SwiftUI

public struct PasswordTextFieldComponent: View {
    
    private let title: String
    @Binding private var text: String
    
    public init(
        title: String,
        text: Binding<String>
    ) {
        self.title = title
        self._text = text
    }
    
    public var body: some View {
        VStack(spacing: Spacing.x4) {
            HStack {
                Text(title)
                    .font(.h3)
                Spacer()
            }
            SecureField("", text: $text)
                .frame(height: 50)
                .background(Color.white)
                .clipShape(Capsule())
                .font(.body)
            
        }
        .padding(.horizontal)
    }
}

#if DEBUG
#Preview {
    PasswordTextFieldComponent_Preview()
}

struct PasswordTextFieldComponent_Preview: View {
var body: some View {
    VStack {
        PasswordTextFieldComponent(
            title: "Password",
            text: .constant("")
        )
        Spacer()
    }
    .background(Color.background)
}
}
#endif
