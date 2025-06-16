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
                                            }
                    .frame(width: 800, height: 450)
                    .padding()
                    .background(Color.black)
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
                                                    }//Botones izquierda arriba
                        .padding(.top,50)
                        HStack {
                                                    }//Pantalla izquierda abajo
                        .padding(.top,40)
                    }//Botones izquierda
                    VStack{
                        
                    }//Boton derecha
                } //Botones inferiores
                Spacer()
            }// Contenido
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 227/255,green: 51/255,blue: 97/255).opacity(0.5))
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .padding(30)
            
        } //Fin del VStack
        .frame(width: screen.width/2.3, height: screen.height)
        .background(Color(red: 211/255,green: 10/255,blue: 64/255))
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .task {
            await loadPokemons()
        }
    }
    
    func loadPokemons() async{
        
    }

}
#Preview {
    ContentView()
}
