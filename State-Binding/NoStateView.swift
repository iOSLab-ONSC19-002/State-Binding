//
//  NoStateView.swift
//  State-Binding
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 19/11/25.
//

import SwiftUI

struct NoStateView: View {
	
	// Property Wrappers
	// @...
	@State var count: Int = 0
	
	@State var nome: String = ""
	
	@State var idade: Int = 0
	
	var body: some View {
		NavigationStack {
			Form {
				Text("O valor é: \(count)")
					.font(.largeTitle)
				
				TextField("Digite o seu nome", text: $nome)
				
				Picker("Informe sua idade", selection: $idade) {
					ForEach(0..<4) { i in
						Text("\(i)").tag(i)
					}
				}
				.pickerStyle(.palette)
				
				Button {
					increment()
				} label: {
					Text("Incrementar")
				}
				
				NavigationLink {
					// destino
					DetailView(count: $count)
				} label: {
					Text("Ir para a view de detail")
				}
			}
		}
	}
	
	func increment() {
		count += 1
	}
}

//#Preview {
//	NoStateView()
//}
