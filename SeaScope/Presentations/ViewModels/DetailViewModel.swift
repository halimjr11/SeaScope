//
//  DetailViewModel.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//


import Foundation
internal import Combine

@MainActor
class DetailViewModel: ObservableObject {
    
    @Published var isFavorite: Bool = false
    
    private let marine: Marine
    private let getFavoritesUseCase: GetFavoritesUseCase
    private let toggleFavoriteUseCase: ToggleFavoriteUseCase
    
    init(
        marine: Marine,
        getFavoritesUseCase: GetFavoritesUseCase,
        toggleFavoriteUseCase: ToggleFavoriteUseCase
    ) {
        self.marine = marine
        self.getFavoritesUseCase = getFavoritesUseCase
        self.toggleFavoriteUseCase = toggleFavoriteUseCase
    }
    
    func load() {
        let ids = getFavoritesUseCase.execute()
        isFavorite = ids.contains(marine.id)
    }
    
    func toggleFavorite() {
        toggleFavoriteUseCase.execute(id: marine.id)
        isFavorite.toggle()
    }
}
