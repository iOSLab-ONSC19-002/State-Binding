//
//  DetailView.swift
//  State-Binding
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 19/11/25.
//

import SwiftUI

struct DetailView: View {
	
	@Binding var count: Int
	
	var body: some View {
		Text("O valor recebido de count é: \(count)")
			.font(.largeTitle)
			.multilineTextAlignment(.center)
		
		Button {
			count -= 1
		} label: {
			Text("Decrementar")
		}
	}
}

#Preview {
	DetailView(count: .constant(10))
}
