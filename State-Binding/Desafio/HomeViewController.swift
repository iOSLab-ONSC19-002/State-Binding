//
//  HomeViewController.swift
//  State-Binding
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 26/11/25.
//

import Foundation
import SwiftUI
import Combine

class HomeViewController: ObservableObject {
	
	@Published var nome: String
	@Published var idade: Int
	@Published var novoNome: String = ""
	
	init(nome: String, idade: Int) {
		self.nome = nome
		self.idade = idade
	}
	
	func changeName() {
		self.nome = self.novoNome
	}
	
	func validateNewName() -> Bool {
		return self.novoNome.isEmpty
	}
}
