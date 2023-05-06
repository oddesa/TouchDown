//
//  ContentView.swift
//  TouchDown
//
//  Created by Macbook on 06/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 16)
                    .padding(.top,
                             UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05),
                            radius: 5,
                            x: 0,
                            y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .padding(.vertical, 8)
                            .frame(minHeight: 256)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                        }
                        .padding(.horizontal, 16)
                        .padding(.bottom)
                        
                        TitleView(title: "Brands")
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }

                }
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
