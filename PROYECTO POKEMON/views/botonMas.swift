//
//  botonMas.swift
//  PROYECTO POKEMON
//
//  Created by ISSC_412_2024 on 11/06/25.
//

import SwiftUI

struct botonMas: View {
    var color1: Color
    var color2: Color
    var body: some View {
        VStack{
            VStack{}
            .frame(width: 100, height: 100)
            .background(color2)
            .clipShape(Circle())
            Spacer()
        }
        .padding(.top,2)
        .padding(.leading,10)
        .frame(width: 120, height: 120)
        .background(color1)
        .clipShape(Circle())
    }
}
struct botonMas2: View {
    var color1: Color
    var color2: Color
    var body: some View {
        VStack{
            VStack{}
            .frame(width: 180, height: 180)
            .background(color2)
            .clipShape(Circle())
            Spacer()
        }
        .padding(.top,2)
        .padding(.leading,10)
        .frame(width: 200, height: 200)
        .background(color1)
        .clipShape(Circle())
    }
}
