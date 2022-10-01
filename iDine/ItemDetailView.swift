//
//  ItemDetail.swift
//  iDine
//
//  Created by 하진호 on 2022/10/01.
//

import SwiftUI

struct ItemDetailView: View {
    let item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Spacer()
            Button("Order This") {
                order.add(item: item)
            }
            .font(.headline)
            .padding(.bottom)
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetailView(item: MenuItem.example)
                .environmentObject(Order())
        }
    }
}
