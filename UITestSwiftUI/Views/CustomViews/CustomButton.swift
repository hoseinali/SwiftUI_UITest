//
//  ConfirmationButtonView.swift
//  kifePool
//
//  Created by Hossein Ali Alborzi on 10/29/21.
//  Copyright © 2021 hoseinaliAlborzi. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    var onClick:() -> Void
    var title:String

    var body: some View {
        VStack {
            Button {
                onClick()
            } label: {
                Text(title)
                    .frame( maxWidth:.infinity, minHeight: CGFloat.HeightButton)
                    .foregroundColor(Color.white)
                    .background(Color.ButtonBackground)
                    .cornerRadius(CGFloat.ButtonCornerRadius)
            }
            .shadow(color: Color.TextfiledShadow, radius:10, x: 0, y: 8)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(onClick: {
            
        }, title: "test")
    }
}

