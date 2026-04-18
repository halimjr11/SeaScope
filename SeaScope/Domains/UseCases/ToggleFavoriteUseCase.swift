//
//  ToggleFavoriteUseCase.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//


class ToggleFavoriteUseCase {
    
    private let repository: FavoriteRepository
    
    init(repository: FavoriteRepository) {
        self.repository = repository
    }
    
    func execute(id: Int) {
        repository.toggleFavorite(id: id)
    }
}
