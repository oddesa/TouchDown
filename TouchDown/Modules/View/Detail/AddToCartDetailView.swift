//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Jehnsen Hirena Kane on 06/05/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("ADD TO CART")
                .font(.system(.title2, design: .rounded, weight: .bold))
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? products[0].red,
                  green: shop.selectedProduct?.green ?? products[0].green,
                  blue: shop.selectedProduct?.blue ?? products[0].blue)
        )
        .clipShape(Capsule())

    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
