//
//  MarineRepositoryImpl.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//

import Foundation

class MarineRepositoryImpl: MarineRepositoryProtocol {
    
    func getMarines() async throws -> [Marine] {
        guard let url = Bundle.main.url(forResource: "marine", withExtension: "json") else {
            throw URLError(.badURL)
        }
        
        let data = try Data(contentsOf: url)
        let decoded = try JSONDecoder().decode([Marine].self, from: data)
        return decoded
    }
}
