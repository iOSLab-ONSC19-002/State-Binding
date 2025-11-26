//
//  ProfileView.swift
//  State-Binding
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 26/11/25.
//

import SwiftUI

struct ProfileView: View {
	
	@Binding var nome: String
	let idade: Int
	
	@State var novoNome: String = ""
	
	var body: some View {
		NavigationStack {
			VStack(spacing: 50) {
				
				Text("\(nome) - \(idade)")
					.font(.largeTitle)
				
				TextField("Digitar nome para substituição", text: $novoNome)
					.textFieldStyle(.roundedBorder)
				
				Button {
					nome = novoNome
				} label: {
					Text("Trocar o nome")
				}
				.buttonStyle(.glassProminent)
				.disabled(novoNome == "" ? true : false)
				
			}
			
			.padding()
			.navigationTitle("Perfil")
		}
	}
}

#Preview {
	ProfileView(nome: .constant("Paulo"), idade: 45)
}
