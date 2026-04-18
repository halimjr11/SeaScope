//
//  FavoriteRepositoryImpl.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//


class FavoriteRepositoryImpl: FavoriteRepository {
    
    private let local = FavoriteLocalDataSource()
    
    func getFavoriteIds() -> [Int] {
        local.getFavorites()
    }
    
    func toggleFavorite(id: Int) {
        var favorites = local.getFavorites()
        
        if favorites.contains(id) {
            favorites.removeAll { $0 == id }
        } else {
            favorites.append(id)
        }
        
        local.saveFavorites(favorites)
    }
}
