//
//  FavoriteScreen.swift
//  SeaScope
//
//  Created by 2184 on 18/04/26.
//


import SwiftUI

struct FavoriteScreen: View {
    
    @StateObject private var vm: FavoriteViewModel
    
    init(allMarines: [Marine]) {
        let repo = FavoriteRepositoryImpl()
        
        _vm = StateObject(
            wrappedValue: FavoriteViewModel(
                allMarines: allMarines,
                getFavoritesUseCase: GetFavoritesUseCase(repository: repo),
                toggleFavoriteUseCase: ToggleFavoriteUseCase(repository: repo)
            )
        )
    }
    
    var body: some View {
        FavoriteView(
            favorites: vm.favorites,
            onAppear: {
                vm.loadFavorites()
            },
            onToggleFavorite: { marine in
                vm.toggleFavorite(marine: marine)
            }
        )
    }
}