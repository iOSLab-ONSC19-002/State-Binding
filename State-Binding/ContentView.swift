//
//  ContentView.swift
//  State-Binding
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 19/11/25.
//

import SwiftUI

struct ContentView: View {
	
	@State var counter: Int = 0
	
	var body: some View {
		
		HStack {
			Text("\(counter)")
				.font(.largeTitle)
			
			VStack {
				Button {
					counter += 1
				} label: {
					Image(systemName: "plus")
				}
				
				Button {
					counter = 0
				} label: {
					Image(systemName: "")
				}
			}
			
		}
	}
}

#Preview {
	ContentView()
}
