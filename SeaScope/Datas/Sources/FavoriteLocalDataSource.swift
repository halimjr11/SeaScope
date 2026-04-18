//
//  FavoriteLocalDataSource.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//


import Foundation

class FavoriteLocalDataSource {
    
    private let key = "favorite_marines"
    
    func getFavorites() -> [Int] {
        return UserDefaults.standard.array(forKey: key) as? [Int] ?? []
    }
    
    func saveFavorites(_ ids: [Int]) {
        UserDefaults.standard.set(ids, forKey: key)
    }
}
