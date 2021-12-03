//
//  BackgroundLogoView.swift
//  UITestSwiftUI
//
//  Created by Hossein Ali Alborzi on 12/1/21.
//

import SwiftUI

struct BackgroundImageView: View {
    var image:Image
    var body: some View {
        image
            .resizable()
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView(image: Image.logo)
    }
}
