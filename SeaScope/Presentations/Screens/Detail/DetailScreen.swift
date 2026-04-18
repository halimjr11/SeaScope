//
//  DetailScreen.swift
//  SeaScope
//
//  Created by 2184 on 18/04/26.
//


import SwiftUI

struct DetailScreen: View {
    
    @StateObject private var vm: DetailViewModel
    private let marine: Marine
    
    init(marine: Marine) {
        let repo = FavoriteRepositoryImpl()
        
        self.marine = marine
        
        _vm = StateObject(
            wrappedValue: DetailViewModel(
                marine: marine,
                getFavoritesUseCase: GetFavoritesUseCase(repository: repo),
                toggleFavoriteUseCase: ToggleFavoriteUseCase(repository: repo)
            )
        )
    }
    
    var body: some View {
        DetailView(
            marine: marine,
            isFavorite: vm.isFavorite,
            onToggleFavorite: {
                vm.toggleFavorite()
            }
        )
        .onAppear {
            vm.load()
        }
    }
}