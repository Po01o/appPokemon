//
//  botonesTop.swift
//  PROYECTO POKEMON
//
//  Created by ISSC_412_2024 on 16/06/25.
//

import SwiftUI

struct botonesTop: View {
    var color1: Color
    var color2: Color
    var body: some View {
        VStack{
            VStack{}
            .frame(width: 20, height: 20)
            .background(color2)
            .clipShape(Circle())
            Spacer()
        }
        .padding(.top,2)
        .frame(width: 35, height: 35)
        .background(color1)
        .clipShape(Circle())
    }
}
