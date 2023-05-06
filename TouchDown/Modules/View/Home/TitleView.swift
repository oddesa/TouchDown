//
//  TitleView.swift
//  TouchDown
//
//  Created by Jehnsen Hirena Kane on 06/05/23.
//

import SwiftUI

struct TitleView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 4)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
        
    }
}
