//
//  pantalla.swift
//  PROYECTO POKEMON
//
//  Created by ISSC_412_2024 on 11/06/25.
//

import SwiftUI

struct pantalla: View {
    var color: Color
    var body: some View {
        VStack{
        }
        .padding(.top,2)
        .padding(.leading,10)
        .frame(width: 500, height: 250)
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
