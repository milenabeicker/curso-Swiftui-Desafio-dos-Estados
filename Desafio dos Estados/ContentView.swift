//
//  ContentView.swift
//  Desafio dos Estados
//
//  Created by Milena Kessia on 23/03/23.
//

import SwiftUI

struct ContentView: View {

    var estados = ["DF": "Distrito Federal", "MG": "Minas Gerais", "RJ": "Rio de Janeiro", "SP": "São Paulo", "ES": "Espirito Santo", "SC": "Santa Catarina"]
    
    var tituloSection = ("ESTADOS", "BRASIL")

    var body: some View {
        Group{
            List{
                Section("\(tituloSection.0) do \(tituloSection.1) "){
                    ForEach(Array(estados), id: \.0) { key, value in
                        Text("\(value)")
                            .onDisappear{
                                print("\(value) desapareceu da tela")
                            }
                            .onAppear{
                                print("\(key) apareceu na tela")
                            }
                    }
                }
            }
            
        }
        .onAppear{
            print("---------ESTADOS---------")
            for (key, value) in estados {
                print("\(key) - \(value)")
            }
            print("-------------------")
        }
   }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
