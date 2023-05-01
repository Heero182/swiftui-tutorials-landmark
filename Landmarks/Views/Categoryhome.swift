//
//  Categoryhome.swift
//  Landmarks
//
//  Created by HEIDER B SILVEIRA on 01/05/23.
//

import SwiftUI

struct Categoryhome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categaoryName: key,
                                itens: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct Categoryhome_Previews: PreviewProvider {
    static var previews: some View {
        Categoryhome()
            .environmentObject(ModelData())
    }
}
