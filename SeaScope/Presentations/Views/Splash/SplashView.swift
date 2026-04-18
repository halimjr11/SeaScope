//
//  SplashView.swift
//  SeaScope
//
//  Created by halimjr on 17/04/26.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    @State private var scale: CGFloat = 0.8
    @State private var opacity: Double = 0.5

    var body: some View {
        if isActive {
//            HomeView()
        } else {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color("OceanGradientStart"),
                        Color("OceanGradientEnd")
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack {
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 240, height: 240)
                        .foregroundColor(.white)
                }
                .scaleEffect(scale)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        scale = 1.0
                        opacity = 1.0
                    }

                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
