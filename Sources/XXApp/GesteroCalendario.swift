import Foundation
import OpenCombine

class GestoreCalendario
{
    @Published var eventi: [Evento] = []

    func aggiungiEvento(titolo: String, data: Date, durata: Float, categoria: CategoriaEvento, id: Int)
    {
        eventi.append(Evento (titolo: titolo, data: data, durata: durata, categoria: categoria, id: id))
    }

    func rimuoviEvento (id: Int)
    {
        eventi.removeAll(where: {evento in evento.id == id})
    }

}

