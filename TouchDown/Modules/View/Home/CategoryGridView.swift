//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Macbook on 06/05/23.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,
                      alignment: .center,
                      spacing: columnSpacing,
                      pinnedViews: []) {
                Section(header: SectionView(rotateClockWise: false),
                        footer: SectionView(rotateClockWise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }
                      .frame(height: 140)
                      .padding(.horizontal, 15)
                      .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
