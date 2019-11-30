//
//  ContentView.swift
//  CustomSwitchInSwuftUI
//
//  Created by Ramill Ibragimov on 30.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        ZStack {
            self.show ? Color.black.edgesIgnoringSafeArea(.all) : Color.white.edgesIgnoringSafeArea(.all)
            CustomSwitch(show: $show)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomSwitch: View {
    @Binding var show: Bool
    var body: some View {
        ZStack {
            Capsule()
                .fill(Color.orange)
                .frame(width: 135, height: 45)
            HStack {
                if show {
                    Spacer()
                    Text("Light")
                        .foregroundColor(.gray)
                }
                ZStack {
                    Capsule()
                        .fill(Color.red)
                        .frame(width: 60, height: 48)
                    Image(systemName: "moon.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.yellow)
                }.onTapGesture {
                    self.show.toggle()
                }
                if !show {
                    Text("Dark")
                        .foregroundColor(.gray)
                    Spacer()
                }
            }.frame(width: 135, height: 45)
                .animation(.spring())
        }
    }
}
