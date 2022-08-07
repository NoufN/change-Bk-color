//
//  ContentView.swift
//  ColorBG
//
//  Created by nouf on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State public var colorBk : Color = .gray
    var body: some View {
        ZStack  {
            
            colorBk.edgesIgnoringSafeArea(.all)
            //            create button
            VStack{
                Buttons(color: .yellow, contentView: self)
                Buttons(color: .green, contentView: self)
                Buttons(color: .red, contentView: self)
                Buttons(color: .blue, contentView: self)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




// Struct to create buttons
struct Buttons :  View {
    
    @State var color : Color
    @State var contentView : ContentView
    
    
    var body: some View {
        Button(role: nil) {
            contentView.colorBk = color
        } label: {
            Circle()
                .fill(.white)
                .frame(width: 75, height: 75, alignment: .center)
                .shadow( radius: 10)
                .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(color)
                )
        }
        
    }
    
}
