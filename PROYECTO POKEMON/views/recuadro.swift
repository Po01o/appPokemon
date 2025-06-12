//
//  recuadro.swift
//  PROYECTO POKEMON
//
//  Created by ISSC_412_2024 on 11/06/25.
//

import SwiftUI

struct recuadro: View {
    let nombre: String
    let valor: String
    var body: some View {
        VStack {
            Text(nombre)
                .font(.title2)
                .bold()
                .foregroundStyle(Color(red: 28/255,green: 135/255,blue: 151/255))
            
            Text(valor)
                .bold()
                .font(.title3)
                .foregroundStyle(Color(red: 28/255,green: 135/255,blue: 151/255))
                .frame(width: 190, height: 50)
                .background(Color(red: 247/255,green: 251/255,blue: 255/255))
                .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        .frame(width: 200)
        .padding(5)
        //.background(Color(red: 156/255,green: 219/255,blue: 165/255))
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 194/255,green: 243/255,blue: 217/255), Color(red: 156/255,green: 219/255,blue: 165/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .clipShape(RoundedRectangle(cornerRadius: 25))
            
    }
}
