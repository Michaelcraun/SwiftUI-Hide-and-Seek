//
//  ContentView.swift
//  Hide and Seek
//
//  Created by Michael Craun on 5/9/20.
//  Copyright © 2020 Michael Craun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show: Bool = false
    
    var body: some View {
        ZStack {
            CardView(show: $show)
            Text("Tap Me!")
        }.onTapGesture {
            self.show.toggle()
        }
    }
}

struct CardView: View {
    @Binding var show: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: show ? 12 : 2)
            .foregroundColor(show ? .pink : .red)
            .frame(width: 300, height: 300)
            .animation(.spring())
            .offset(x: show ? 0 : 300)
//            .rotationEffect(Angle(degrees: show ? 12 : -12))
            .rotation3DEffect(Angle(degrees: -24), axis: (x: 10, y: 10, z: -8))
            .shadow(radius: 12)
            .blur(radius: show ? 0 : 2)
//            .scaleEffect(show ? 2 : 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
