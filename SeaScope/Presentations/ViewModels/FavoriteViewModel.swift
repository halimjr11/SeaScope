//
//  FavoriteViewModel.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//


import Foundation
internal import Combine

@MainActor
class FavoriteViewModel: ObservableObject {
    
    @Published var favorites: [Marine] = []
    
    private let getFavoritesUseCase: GetFavoritesUseCase
    private let toggleFavoriteUseCase: ToggleFavoriteUseCase
    private let allMarines: [Marine] // dari Home
    
    init(
        allMarines: [Marine],
        getFavoritesUseCase: GetFavoritesUseCase,
        toggleFavoriteUseCase: ToggleFavoriteUseCase
    ) {
        self.allMarines = allMarines
        self.getFavoritesUseCase = getFavoritesUseCase
        self.toggleFavoriteUseCase = toggleFavoriteUseCase
    }
    
    func loadFavorites() {
        let ids = getFavoritesUseCase.execute()
        favorites = allMarines.filter { ids.contains($0.id) }
    }
    
    func toggleFavorite(marine: Marine) {
        toggleFavoriteUseCase.execute(id: marine.id)
        loadFavorites()
    }
}
