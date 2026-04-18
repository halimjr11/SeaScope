//
//  EmptyStateView.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "heart.slash")
                .font(.system(size: 50))
                .foregroundColor(.gray)

            Text("No Favorites Yet")
                .font(.headline)

            Text("Tap ❤️ to add favorite marine life")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    EmptyStateView()
}
