//
//  ContentView.swift
//  swiftUI_Task_2
//
//  Created by pavel mishanin on 3/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textWidth: CGFloat = 300
    
    var body: some View {
        VStack {
            customText
                .frame(width: textWidth, height: 200)
                .border(.red, width: 1.5)
                .multilineTextAlignment(.leading)
            
            Slider(value: $textWidth, in: 100...300)
                .padding(.horizontal)
        }
    }
    
   private var customText: some View {
            Text("Марафон" + " ")
                .font(.system(size: 17, weight: .light))
                .foregroundColor(.gray)
            
            + Text("по SwiftUI" + " ")
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(.black)
            
            + Text("«Отцовский пинок»")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.blue)
    }
    
}

#Preview {
    ContentView()
}
