//
//  MarineCard.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//

import SwiftUI

struct MarineCard: View {
    let marine: Marine
    let isFavorite: Bool
    let onFavoriteTap: () -> Void
    
    var body: some View {
        NavigationLink(destination: DetailScreen(marine: marine)) {
            ZStack(alignment: .bottomLeading) {
                Image(marine.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 180)
                    .clipped()
                
                LinearGradient(
                    colors: [Color.clear, Color.black.opacity(0.7)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                VStack(alignment: .leading) {
                    Text(marine.name)
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text(marine.habitat)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                }
                .padding()
                
                VStack {
                    HStack {
                        Spacer()
                        
                        Button(action: onFavoriteTap) {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                                .padding(8)
                                .background(.ultraThinMaterial)
                                .clipShape(Circle())
                        }
                    }
                    Spacer()
                }
                .padding()
            }
            .cornerRadius(20)
            .shadow(color: .black.opacity(0.2), radius: 8, y: 4)
        }
    }
}

#Preview {
    MarineCard(
        marine: Marine(
            id: 0,
            name: "Shark",
            image: "AppIcon",
            description: "One of the ocean's most powerful predators.",
            habitat: "Coastal waters worldwide",
            diet: "Fish, seals, sea lions",
            size: "4 - 6 meters",
            lifespan: "30 - 70 years",
            funFact: "They can detect a drop of blood in the ocean from miles away."
        ),
        isFavorite: false,
        onFavoriteTap: {}
    )
}
