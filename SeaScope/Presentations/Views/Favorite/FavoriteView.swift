//
//  FavoriteView.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//

import SwiftUI

struct FavoriteView: View {
    let favorites: [Marine]
    let onAppear: () -> Void
    let onToggleFavorite: (Marine) -> Void

    var body: some View {
        NavigationView {
            Group {
                if favorites.isEmpty {
                    EmptyStateView()
                } else {
                    List(favorites) { marine in
                        HStack {
                            Image(marine.image)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(10)

                            VStack(alignment: .leading) {
                                Text(marine.name)
                                    .font(.headline)

                                Text(marine.habitat)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }

                            Spacer()

                            Button {
                                onToggleFavorite(marine)
                            } label: {
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Favorites")
        }
        .onAppear {
            onAppear()
        }
    }
}

#Preview("With Data") {
    FavoriteView(
        favorites: [
            Marine(
                id: 0,
                name: "Shark",
                image: "AppIcon",
                description: "One of the ocean's most powerful predators.",
                habitat: "Coastal waters worldwide",
                diet: "Fish, seals, sea lions",
                size: "4 - 6 meters",
                lifespan: "30 - 70 years",
                funFact: "They can detect a drop of blood in the ocean from miles away."
            )
        ],
        onAppear: {},
        onToggleFavorite: { _ in }
    )
}

#Preview("Empty State") {
    FavoriteView(
        favorites: [],
        onAppear: {},
        onToggleFavorite: { _ in }
    )
}
