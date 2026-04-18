//
//  GetFavoritesUseCase.swift
//  SeaScope
//
//  Created by 2184 on 18/04/26.
//


class GetFavoritesUseCase {
    
    private let repository: FavoriteRepository
    
    init(repository: FavoriteRepository) {
        self.repository = repository
    }
    
    func execute() -> [Int] {
        repository.getFavoriteIds()
    }
}