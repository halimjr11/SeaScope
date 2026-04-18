//
//  HomeView.swift
//  SeaScope
//
//  Created by halimjr on 17/04/26.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var searchText: String
    let isLoading: Bool
    let marines: [Marine]
    
    let onSearchChange: () -> Void
    let onToggleFavorite: (Int) -> Void
    let isFavorite: (Int) -> Bool
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ZStack(alignment: .bottomLeading) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("SeaScope")
                            .font(.largeTitle)
                            .bold()
                        
                        Text("Explore marine life")
                            .foregroundColor(.black.opacity(0.9))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding()
                }
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Search marine...", text: $searchText)
                        .onChange(of: searchText) {
                            onSearchChange()
                        }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                .padding()
                
                if isLoading {
                    ProgressView().padding()
                }
                
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(marines) { marine in
                            MarineCard(
                                marine: marine,
                                isFavorite: isFavorite(marine.id),
                                onFavoriteTap: {
                                    onToggleFavorite(marine.id)
                                }
                            )
                        }
                    }
                    .padding()
                }
            }
            .background(Color(.systemBackground)) // ✅ clean base
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        AboutView()
                    } label: {
                        Image(systemName: "person.fill")
                            .font(.title2)
                    }
                }
            }
        }
    }
}

let mockMarines: [Marine] = [
    Marine(
        id: 1,
        name: "Great White Shark",
        image: "shark",
        description: "Apex predator",
        habitat: "Ocean",
        diet: "Carnivore",
        size: "9\"",
        lifespan: "70 years",
        funFact: "hehe"
    ),
    Marine(
        id: 2,
        name: "Clownfish",
        image: "clownfish",
        description: "Colorful reef fish",
        habitat: "Coral Reef",
        diet: "Omnivore",
        size: "9 inch",
        lifespan: "6 years",
        funFact: "hehe"
    )
]

#Preview {
    HomeView(
        searchText: .constant(""),
        isLoading: false,
        marines: mockMarines,
        onSearchChange: {},
        onToggleFavorite: {_ in},
        isFavorite: {_ in false}
    )
}
