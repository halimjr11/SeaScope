//
//  MarineViewModel.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//

import Foundation
internal import Combine

@MainActor
class MarineViewModel: ObservableObject {
    
    @Published var marines: [Marine] = []
    @Published var filteredMarines: [Marine] = []
    @Published var isLoading = false
    @Published var searchText = ""
    @Published var favorites: Set<Int> = []
    
    private let useCase: GetMarinesUseCase
    
    init(useCase: GetMarinesUseCase) {
        self.useCase = useCase
    }
    
    func fetchMarines() async {
        isLoading = true
        do {
            let data = try await useCase.execute()
            marines = data
            filteredMarines = data
        } catch {
            print(error)
        }
        isLoading = false
    }
    
    func search() {
        if searchText.isEmpty {
            filteredMarines = marines
        } else {
            filteredMarines = marines.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    func toggleFavorite(id: Int) {
        if favorites.contains(id) {
            favorites.remove(id)
        } else {
            favorites.insert(id)
        }
    }
    
    func isFavorite(id: Int) -> Bool {
        favorites.contains(id)
    }
}
