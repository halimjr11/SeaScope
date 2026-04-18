//
//  DetailView.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//


import SwiftUI

struct DetailView: View {
    
    let marine: Marine
    let isFavorite: Bool
    let onToggleFavorite: () -> Void
    
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .bottomLeading) {
                Image(marine.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 320)
                    .clipped()
                
                LinearGradient(
                    colors: [.clear, .black.opacity(0.8)],
                    startPoint: .center,
                    endPoint: .bottom
                )
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(marine.name)
                        .font(.largeTitle)
                        .bold()
                    
                    Text(marine.habitat)
                        .font(.subheadline)
                        .opacity(0.9)
                }
                .foregroundColor(.white)
                .padding()
            }
            
            VStack(spacing: 20) {
                
                Button(action: onToggleFavorite) {
                    HStack {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                        
                        Text(isFavorite ? "Favorited" : "Add to Favorite")
                    }
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        isFavorite
                        ? Color.red
                        : Color("AccentColor")
                    )
                    .foregroundColor(.white)
                    .cornerRadius(14)
                    .shadow(radius: 5)
                }
                .animation(.easeInOut, value: isFavorite)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Description")
                        .font(.headline)
                    
                    Text(marine.description)
                        .foregroundColor(.gray)
                        .lineSpacing(4)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(.systemBackground))
                .cornerRadius(16)
                .shadow(color: .black.opacity(0.05), radius: 5)
                
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 12) {
                    
                    InfoCard(title: "Diet", value: marine.diet)
                    InfoCard(title: "Size", value: marine.size)
                    InfoCard(title: "Lifespan", value: marine.lifespan)
                    InfoCard(title: "Habitat", value: marine.habitat)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("🌟 Fun Fact")
                        .font(.headline)
                    
                    Text(marine.funFact)
                        .lineSpacing(4)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    LinearGradient(
                        colors: [
                            Color("OceanGradientStart"),
                            Color("OceanGradientEnd")
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .foregroundColor(.white)
                .cornerRadius(16)
                .shadow(radius: 5)
            }
            .padding()
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    DetailView(
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
        onToggleFavorite: {}
    )
}
