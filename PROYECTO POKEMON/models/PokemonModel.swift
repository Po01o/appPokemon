//
//  PokemonModel.swift
//  PROYECTO POKEMON
//
//  Created by ISSC_412_2024 on 11/06/25.
//

import Foundation

struct PokemonModel: Codable, Identifiable {
    let id: Int
    let imagen: String
    let nombre: String
    let tipo: String
    let descripcion: String
}
