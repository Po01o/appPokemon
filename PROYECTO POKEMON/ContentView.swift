//
//  ContentView.swift
//  PROYECTO POKEMON
//
//  Created by ISSC_412_2024 on 16/06/25.
//

import SwiftUI

struct ContentView: View {
    var screen = NSScreen.main!.visibleFrame
    //@State var searchText: String = ""
    
    @State var pokemons: [PokemonModel] = []
    @State var selectedPokemon: PokemonModel? = nil
    var gridColumns: [GridItem] = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

    var body: some View {
        VStack{
            HStack(alignment: .top){
                VStack{
                    VStack{
                        VStack{
                            VStack{}
                            .frame(width: 25, height: 25)
                            .background(Color(red: 166/255,green: 243/255,blue: 249/255))
                            .clipShape(Circle())
                            Spacer()
                        }
                        .padding(.top,5)
                        .frame(width: 50, height: 50)
                        .background(Color(red: 12/255,green: 238/255,blue: 244/255))
                        .clipShape(Circle())
                        Spacer()
                    }
                    .padding(.top,5)
                    .frame(width: 90, height: 90)
                    .background(Color(red: 14/255,green: 189/255,blue: 210/255))
                    .clipShape(Circle())
                    Spacer()
                }
                .frame(width: 100, height: 100)
                .background(Color.white)
                .clipShape(Circle())
                
                botonesTop(color1: Color(red: 164/255,green: 5/255,blue: 18/255), color2: Color(red: 240/255,green: 3/255,blue: 29/255))
                botonesTop(color1: Color(red: 142/255,green: 146/255,blue: 66/255), color2: Color(red: 198/255,green: 204/255,blue: 83/255))
                botonesTop(color1: Color(red: 97/255,green: 176/255,blue: 56/255), color2: Color(red: 147/255,green: 246/255,blue: 99/255))
                Spacer()

            }//Botones superiores
            .padding()
            
            
            VStack(alignment: .leading) {
                VStack{
                    HStack{
                        botonesTop(color1: Color(red: 164/255,green: 5/255,blue: 18/255), color2: Color(red: 164/255,green: 5/255,blue: 18/255))
                            .padding(.top, 20)
                            .padding(.trailing, 50)
                        botonesTop(color1: Color(red: 164/255,green: 5/255,blue: 18/255), color2: Color(red: 164/255,green: 5/255,blue: 18/255))
                            .padding(.top, 20)

                    }//Botones contenido arriba
                    .padding(.top,11)
                    HStack{
                        ScrollView {
                                                    LazyVGrid(columns: gridColumns) {
                                                        ForEach(pokemons) { pokemon in
                                                            PokemonCard(pokemon: pokemon)
                                                                .onTapGesture {
                                                                    selectedPokemon = pokemon
                                                                }
                                                        }
                                                    }
                                                }                 }
                    .frame(width: 800, height: 450)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 244/255,green: 255/255,blue: 244/255), Color(red: 231/255,green: 255/255,blue: 223/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .clipShape(RoundedRectangle(cornerRadius: 25))

                    Spacer()
                    HStack{ botonesTop(color1: Color(red: 164/255,green: 5/255,blue: 18/255), color2: Color(red: 164/255,green: 5/255,blue: 18/255))
                            .padding()
                            .padding(.leading,50)
                            .padding(.bottom,25)
                        Spacer()
                        VStack {
                            HStack{}
                                .frame(width: 200, height: 7)
                                .background(Color.black)
                                .clipShape(Capsule())
                            HStack{}
                                .frame(width: 200, height: 7)
                                .background(Color.black)
                                .clipShape(Capsule())
                            HStack{}
                                .frame(width: 200, height: 7)
                                .background(Color.black)
                                .clipShape(Capsule())
                            HStack{}
                                .frame(width: 200, height: 7)
                                .background(Color.black)
                                .clipShape(Capsule())
                        }
                        .padding(.bottom, 30)
                        .padding(.trailing, 90)
                    }
                }// Pantalla principal
                .frame(width: 900, height: 600)
                .background(Color(red: 227/255,green: 227/255,blue: 227/255))
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .padding(.top, 30)
                
                HStack{
                    VStack{
                        HStack{
                            botonMas(color1: Color(red: 1/255,green: 4/255,blue: 2/255), color2: Color(red: 44/255,green: 44/255,blue: 44/255))
                                                            .padding(.trailing, 30)
                                                        botonLargo(color1: Color(red: 8/255,green: 64/255,blue: 53/255), color2: Color(red: 95/255,green: 196/255,blue: 128/255))
                                                            .padding(.trailing, 30)
                                                        botonLargo(color1: Color(red: 7/255,green: 49/255,blue: 102/255), color2: Color(red: 34/255,green: 196/255,blue: 234/255))                        }//Botones izquierda arriba
                        .padding(.top,50)
                        HStack {
                            pantalla(color: Color(red: 95/255,green: 196/255,blue: 128/255))          }//Pantalla izquierda abajo
                        .padding(.top,40)
                    }//Botones izquierda
                    VStack{
                        botonMas2(color1: Color(red: 1/255,green: 4/255,blue: 2/255), color2: Color(red: 44/255,green: 44/255,blue: 44/255))
                                                    .padding(.leading, 70)
                    }//Boton derecha
                    
                } //Botones inferiores
                Spacer()
            }// Contenido
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 227/255,green: 51/255,blue: 97/255).opacity(0.5))
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .padding(30)
            .sheet(item: $selectedPokemon) { pokemon in
                VStack{
                    HStack {
                        ZStack {
                            Image("pasto")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 150)
                                .padding(.top, 140)
                            
                            AsyncImage(url: URL(string: pokemon.imagen)){ image in
                                image.image?.resizable()
                                    .scaledToFill()
                                    .frame(width: 240, height: 240)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(.bottom, 20)
                                }
                        }
                        .padding(.leading, 170)
                        Spacer()
                        VStack {
                            recuadro(nombre: "NOMBRE", valor: pokemon.nombre)
                                .padding(.bottom, 30)
                            recuadro(nombre: "TIPO", valor: pokemon.tipo)
                        }
                        .padding(.trailing, 100)
                    }
                    HStack {
                        Text("DESCRIPCION")
                            .bold()
                                .font(.title)
                                .bold()
                                .foregroundStyle(Color(red: 28/255,green: 135/255,blue: 151/255))
                        HStack {
                            Text(pokemon.descripcion)
                                .bold()
                                .font(.title3)
                                .foregroundStyle(Color(red: 28/255,green: 135/255,blue: 151/255))
                        }
                        .frame(width: .infinity, height: .infinity)
                        .padding()
                        .background(Color(red: 244/255,green: 255/255,blue: 244/255))
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .padding(.leading, 10)
                    }
                    .frame(width: 600)
                    .padding(10)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 194/255,green: 243/255,blue: 217/255), Color(red: 156/255,green: 219/255,blue: 165/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                }//Fin del Sheet
                .frame(width: 800, height: 500)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 244/255,green: 255/255,blue: 244/255), Color(red: 231/255,green: 255/255,blue: 223/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                }
            
        } //Fin del VStack
        .frame(width: screen.width/2.3, height: screen.height)
        .background(Color(red: 211/255,green: 10/255,blue: 64/255))
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .task {
            await loadPokemons()
        }
    }
    
    func loadPokemons() async{
        let URL = URL(string: "https://pokedex-api-mfmdu.ondigitalocean.app/pokemon")
                do{
                    let (data, _) = try await URLSession.shared.data(from:URL!)
                    let pokemonsDecoded = try JSONDecoder().decode([PokemonModel].self, from: data)
                    
                    pokemons = pokemonsDecoded
                    print(pokemonsDecoded.count)
                } catch let error {
                    print(error)
                }
    }

}
#Preview {
    ContentView()
}
