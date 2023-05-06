//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Jehnsen Hirena Kane on 06/05/23.
//

import SwiftUI

struct HeaderDetailView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
