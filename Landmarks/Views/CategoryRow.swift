//
//  CategoryRow.swift
//  Landmarks
//
//  Created by HEIDER B SILVEIRA on 01/05/23.
//

import SwiftUI

struct CategoryRow: View {
    var categaoryName: String
    var itens: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categaoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0){
                    ForEach(itens) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(
            categaoryName: landmarks[0].category.rawValue,
            itens: Array(landmarks.prefix(4))
        )
    }
}
