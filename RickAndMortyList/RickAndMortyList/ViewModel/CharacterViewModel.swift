import Foundation

// MARK: - CharacterViewModel
class CharacterViewModel: ObservableObject {
    @Published var characters: [Character] = [] // Храним загруженных персонажей
    @Published var isFetching = false // Флаг для предотвращения повторного запроса
    private var currentPage = 1 // Текущая страница
    private var totalPages = 1 // Общее количество страниц (по умолчанию 1)

    // MARK: - Fetch Characters
    func fetchCharacters() {
        // Проверяем, не идет ли загрузка уже
        guard !isFetching, currentPage <= totalPages else { return }

        // Устанавливаем флаг загрузки
        isFetching = true

        // Формируем URL с текущей страницей
        guard let url = URL(string: "https://rickandmortyapi.com/api/character?page=\(currentPage)") else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            defer {
                // Снимаем флаг загрузки после завершения задачи
                DispatchQueue.main.async {
                    self.isFetching = false
                }
            }

            if let data = data {
                do {
                    // Декодируем ответ
                    let decodedResponse = try JSONDecoder().decode(CharacterResponse.self, from: data)

                    // Обновляем данные на главном потоке
                    DispatchQueue.main.async {
                        self.characters.append(contentsOf: decodedResponse.results) // Добавляем персонажей
                        self.currentPage += 1 // Увеличиваем текущую страницу
                        self.totalPages = decodedResponse.info.pages // Устанавливаем общее количество страниц
                    }
                } catch {
                    print("Ошибка декодирования: \(error)")
                }
            } else if let error = error {
                print("Ошибка сети: \(error.localizedDescription)")
            }
        }.resume()
    }
}
