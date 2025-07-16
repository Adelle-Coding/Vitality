//
//  Checklist.swift
//  Vitality
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ChecklistItem: Identifiable {
    let id = UUID() // Unique identifier for each item
    var name: String
    var isChecked: Bool
}
struct ChecklistView: View {
    @State private var items: [ChecklistItem] = [
        ChecklistItem(name: "Buy groceries", isChecked: false),
        ChecklistItem(name: "Walk the dog", isChecked: true),
        ChecklistItem(name: "Finish report", isChecked: false)
    ]

    var body: some View {
        List {
            ForEach($items) { $item in // Use $item for binding
                Toggle(isOn: $item.isChecked) {
                    Text(item.name)
                }
                .toggleStyle(CheckboxToggleStyle()) // Apply the custom style
            }
        }
    }
}
struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}

