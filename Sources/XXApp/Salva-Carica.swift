import Foundation

func salvaEventi(evento: [Evento], percorso: String) {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    do {
        let dati = try encoder.encode(evento)
        try dati.write(to: URL(fileURLWithPath: percorso))
    } catch {
        print("Errore nel salvataggio: \(error)")
    }
}

func caricaEventi(percorso: String) -> [Evento] {
    guard let dati = FileManager.default.contents(atPath: percorso) else {
        return []
    }
    do {
        return try JSONDecoder().decode([Evento].self, from: dati)
    } catch {
        print("Errore nel caricamento: \(error)")
        return []
    }
}