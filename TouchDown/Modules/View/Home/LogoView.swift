//
//  LogoView.swift
//  TouchDown
//
//  Created by Macbook on 06/05/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("TOUCH")
                .foregroundColor(.black)
                .font(.title3)
                .fontWeight(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("DOWN")
                .foregroundColor(.black)
                .font(.title3)
                .fontWeight(.black)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
