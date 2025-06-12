//
//  PokemonCards.swift
//  PROYECTO POKEMON
//
//  Created by ISSC_412_2024 on 11/06/25.
//

import SwiftUI

struct PokemonCard: View {
    let pokemon: PokemonModel
    var body: some View {
        VStack {
            //Imagen de internet
            AsyncImage(url: URL(string: pokemon.imagen)){ image in
                image.image?.resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            //Nombre
            
            
            //Tipo
            
            
        } //Fin del VStack
        .frame(width: 200, height: 200)
        .padding()
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
