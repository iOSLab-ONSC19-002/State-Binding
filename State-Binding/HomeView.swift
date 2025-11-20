//
//  HomeView.swift
//  State-Binding
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 19/11/25.
//

import SwiftUI

struct HomeView: View {
	
	@State var nome: String = ""
	
	@State var idade: Int = 0
	
	var body: some View {
		NavigationStack {
			Form {
				TextField("Digite seu nome", text: $nome)
				
				Picker("Informe sua idade", selection: $idade) {
					ForEach(0..<101) { i in
						Text("\(i)").tag(i)
					}
				}
				
				NavigationLink {
					// destino
				} label: {
					// visual
					Text("Ir para perfil")
				}
			}
		}
	}
}

#Preview {
	HomeView()
}
