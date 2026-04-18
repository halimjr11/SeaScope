//
//  InfoCard.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//


import SwiftUI

struct InfoCard: View {
    let title: String
    let value: String

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.caption)
                .foregroundColor(.gray)

            Text(value)
                .font(.headline)
                .multilineTextAlignment(.leading)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(maxHeight: .infinity, alignment: .top) // 🔥 ini kuncinya
        .background(Color.blue.opacity(0.1))
        .cornerRadius(12)
    }
}

#Preview {
    InfoCard(title: "Top Speed", value: "100 km/h")
}
