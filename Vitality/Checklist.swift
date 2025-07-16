//
//  Checklist.swift
//  Vitality
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ChecklistItem: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}

struct ChecklistView: View {
    @State private var items: [ChecklistItem] = [
        ChecklistItem(title: "Buy Groceries", isCompleted: false),
        ChecklistItem(title: "Walk the Dog", isCompleted: true)
    ]
    @State private var newItemTitle: String = ""

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(items) { item in
                        HStack {
                            Button {
                                toggleCompletion(for: item) // Function to mark as complete/incomplete
                            } label: {
                                Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                                    .foregroundColor(item.isCompleted ? .green : .gray)
                            }
                            TextField("Edit Item", text: binding(for: item))
                        }
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                }
                .navigationTitle("My Checklist")
                .toolbar {
                    EditButton()
                    Button("Add") {
                        addNewItem()
                    }
                }
                // Add an input field for new items or present a separate view
            }
        }
    }

    // Functions for toggling completion, deleting, moving, and adding items
    func toggleCompletion(for item: ChecklistItem) { /* ... */ }
    func deleteItem(at offsets: IndexSet) { /* ... */ }
    func moveItem(from source: IndexSet, to destination: Int) { /* ... */ }
    func addNewItem() { /* ... */ }
    
    // Binding helper for TextField
    private func binding(for item: ChecklistItem) -> Binding<String> {
        guard let index = items.firstIndex(where: { $0.id == item.id }) else {
            fatalError("Can't find item in array")
        }
        return $items[index].title
    }
}
