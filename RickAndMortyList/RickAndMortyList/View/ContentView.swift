import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CharacterViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 0) {
                    // MARK: Character Rows
                    ForEach(viewModel.characters) { character in
                        CharacterRow(character: character)
                            .onAppear {
                                // Проверяем, достигли ли мы последнего элемента
                                if character == viewModel.characters.last {
                                    viewModel.fetchCharacters()
                                }
                            }
                    }

                    // MARK: Loading Indicator
                    if viewModel.isFetching {
                        ProgressView()
                            .padding()
                    }
                }
                .padding()
            }
            .navigationTitle("Characters")
            .onAppear {
                // MARK: Initial Fetch
                viewModel.fetchCharacters()
            }
        }
    }
}
