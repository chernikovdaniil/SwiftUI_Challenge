//
//  ContentView.swift
//  SwiftUI_Challenge
//
//  Created by Danil Chernikov on 01.12.2023.
//

import SwiftUI

#Preview {
    TabView {
        ContentView()
    }
}

struct ContentView: View {
    private let rectangleHeight: CGFloat = 60
    private let itemsCount = 100
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                ScrollView {
                    ForEach(1...itemsCount, id: \.self) {
                        Text(String($0))
                            .font(.system(size: 30))
                            .foregroundStyle(.black)
                            .frame(height: 35)
                            .frame(maxWidth: .infinity)
                    }
                }
                .safeAreaInset(edge: .bottom,
                               alignment: .center,
                               spacing: rectangleHeight) {
                    Spacer().frame(height: .zero)
                }
                
                Rectangle()
                    .frame(height: rectangleHeight)
                    .foregroundStyle(.red.opacity(0.55))
            }
        }
        .tabItem { Label("Main", systemImage: "globe") }
    }
}
