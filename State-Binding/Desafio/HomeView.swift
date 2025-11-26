//
//  HomeView.swift
//  State-Binding
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 19/11/25.
//

import SwiftUI

struct HomeView: View {
	
	@StateObject var controller = HomeViewController(nome: "", idade: 0)
	
	@Environment(\.colorScheme) var colorScheme
	
	@State var isOn = false
	
	var body: some View {
		NavigationStack {
			
			Form {// Begin-Form
				HStack {
					Text("Seu nome")
					Divider()
					TextField("Digite seu nome", text: $controller.nome)
				}
				
				Picker("Informe sua idade", selection: $controller.idade) {
					ForEach(0..<101) { i in
						Text("\(i)").tag(i)
					}
				}
				
				Toggle(isOn: $isOn) {
					Text("Olá")
				}
				
				NavigationLink {
					// destino
					ProfileView(controller: controller)
				} label: {
					// visual
					Text("Ir para perfil")
						.foregroundStyle(colorScheme == .light ? .blue : .green)
				}
			}// End-Form
			.navigationTitle("Home")

		}
	}
}

#Preview {
	HomeView()
}
