//
//  HomeScreen.swift
//  SeaScope
//
//  Created by 2184 on 18/04/26.
//


import SwiftUI

struct HomeScreen: View {
    
    @StateObject var vm = MarineViewModel(
        useCase: GetMarinesUseCase(
            repository: MarineRepositoryImpl()
        )
    )
    
    var body: some View {
        HomeView(
            searchText: $vm.searchText,
            isLoading: vm.isLoading,
            marines: vm.filteredMarines,
            onSearchChange: {
                vm.search()
            },
            onToggleFavorite: { id in
                vm.toggleFavorite(id: id)
            },
            isFavorite: { id in
                vm.isFavorite(id: id)
            }
        )
        .task {
            await vm.fetchMarines()
        }
    }
}