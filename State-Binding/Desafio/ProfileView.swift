//
//  ProfileView.swift
//  State-Binding
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 26/11/25.
//

import SwiftUI

struct ProfileView: View {
	
	@ObservedObject var controller: HomeViewController
	
	@Environment(\.dismiss) var dismiss
	
	var body: some View {
		NavigationStack {
			VStack(spacing: 50) {
				
				Text("\(controller.nome) - \(controller.idade)")
					.font(.largeTitle)
				
				TextField("Digitar nome para substituição", text: $controller.novoNome)
					.textFieldStyle(.roundedBorder)
				
				Button {
					controller.changeName()
				} label: {
					Text("Trocar o nome")
				}
				.buttonStyle(.glassProminent)
				.disabled(controller.validateNewName())
				
				Button {
					dismiss()
				} label: {
					Text("Voltar")
				}
			}
			
			.padding()
			.navigationTitle("Perfil")
			.navigationBarBackButtonHidden()
		}
	}
}

#Preview {
	ProfileView(controller: HomeViewController(nome: "Paulo", idade: 10))
}
