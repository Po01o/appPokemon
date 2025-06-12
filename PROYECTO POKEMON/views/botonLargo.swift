//
//  botonLargo.swift
//  PROYECTO POKEMON
//
//  Created by ISSC_412_2024 on 11/06/25.
//

import SwiftUI

struct botonLargo: View {
    var color1: Color
    var color2: Color
    var body: some View {
        VStack{
            VStack{}
            .frame(width: 180, height: 100)
            .background(color2)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer()
        }
        .padding(.top,2)
        .padding(.leading,10)
        .frame(width: 200, height: 120)
        .background(color1)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
