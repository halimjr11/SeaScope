//
//  MarineRepository.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//

import Foundation

protocol MarineRepositoryProtocol {
    func getMarines() async throws -> [Marine]
}
