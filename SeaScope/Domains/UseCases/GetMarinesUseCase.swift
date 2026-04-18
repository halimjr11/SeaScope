//
//  GetMarinesUseCase.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//

import Foundation

class GetMarinesUseCase {
    
    private let repository: MarineRepositoryProtocol
    
    init(repository: MarineRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() async throws -> [Marine] {
        try await repository.getMarines()
    }
}
