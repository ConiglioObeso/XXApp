import Foundation

struct Evento: Codable {
    var titolo: String
    var data: Date
    var durata: Float
    var descrizione: String?
    var categoria: CategoriaEvento
    var id: Int
}