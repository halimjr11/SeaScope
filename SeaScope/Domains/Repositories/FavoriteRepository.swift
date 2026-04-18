//
//  FavoriteRepository.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//


protocol FavoriteRepository {
    func getFavoriteIds() -> [Int]
    func toggleFavorite(id: Int)
}
