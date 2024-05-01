//
//  AvocadosView.swift
//  Avocados
//
//  Created by Denis Yaremenko on 15.04.2024.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - Properties
    
    @State private var pulsateAnimation: Bool = false
    
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true))
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("""
                     Creamy, green, and full of nutrients!
                     Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
                    """)
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
        })
    }
    
}

struct AvocadosView_Preview: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .environment(\.colorScheme, .dark)
    }
}
