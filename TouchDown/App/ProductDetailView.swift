//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Jehnsen Hirena Kane on 06/05/23.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                RatingSizeDetailView()
                    .padding(.bottom, 10)
                    .padding(.top, -20)
//                    .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? products[0].description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                }
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                AddToCartDetailView()
                    .padding(.bottom,
                             UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            }
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ?? products[0].red,
                  green: shop.selectedProduct?.green ?? products[0].green,
                  blue: shop.selectedProduct?.blue ?? products[0].blue)
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products[0])
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
