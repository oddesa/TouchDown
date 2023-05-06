//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Jehnsen Hirena Kane on 06/05/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    let product: Product
    var body: some View {
        Button {
            //TODO
        } label: {
            Spacer()
            Text("ADD TO CART")
                .font(.system(.title2, design: .rounded, weight: .bold))
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(red: product.red, green: product.green, blue: product.blue)
        )
        .clipShape(Capsule())

    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
