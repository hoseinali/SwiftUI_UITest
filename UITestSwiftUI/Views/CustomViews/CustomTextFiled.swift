//
//  CustomTextFiled.swift
//  UITestSwiftUI
//
//  Created by Hossein Ali Alborzi on 12/1/21.
//

import SwiftUI

struct CustomTextFiled: View {
    @Binding var text: String
    var placeHolder: String

    var body: some View {
        TextField(placeHolder, text: $text)
            .font(.title2)
            .multilineTextAlignment(.center)
            .frame(height: CGFloat.HeightTextfiled)
            .background(Color.white)
            .cornerRadius(CGFloat.TextFiledCornerRadius)
            .shadow(color: Color.black.opacity(0.3),radius: 5)
    }
}

