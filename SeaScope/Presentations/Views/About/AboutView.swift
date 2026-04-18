//
//  AboutView.swift
//  SeaScope
//
//  Created by halimjr on 18/04/26.
//


import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                VStack(spacing: 12) {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 140, height: 140)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.blue.opacity(0.3), lineWidth: 4)
                        )
                        .shadow(radius: 8)
                    
                    Text("Nurhaq Halim")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("iOS Developer Enthusiast")
                        .foregroundColor(.gray)
                }
                .padding(.top)
                
                VStack(alignment: .leading, spacing: 12) {
                    Label("About Me", systemImage: "person.fill")
                        .font(.headline)
                    
                    Text("Android developer who is passionate about mobile development, particularly in multi-platform technologies and iOS.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.systemBackground))
                .cornerRadius(16)
                .shadow(radius: 4)
                
                VStack(alignment: .leading, spacing: 12) {
                    Label("Skills", systemImage: "hammer.fill")
                        .font(.headline)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("• Kotlin & Android Development")
                        Text("• Jetpack Compose")
                        Text("• Swift & SwiftUI")
                        Text("• Cross-Platform Development (Flutter / Kotlin Multiplatform)")
                        Text("• REST API Integration")
                        Text("• UI/UX Design Basics")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(.systemBackground))
                .cornerRadius(16)
                .shadow(radius: 4)
                
                VStack(alignment: .leading, spacing: 12) {
                    Label("Contact", systemImage: "envelope.fill")
                        .font(.headline)
                    
                    Text("nurhaqhalim11@gmail.com")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(.systemBackground))
                .cornerRadius(16)
                .shadow(radius: 4)
                
                Spacer(minLength: 20)
            }
            .padding()
        }
        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    AboutView()
}
