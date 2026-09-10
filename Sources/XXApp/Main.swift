// https://docs.swift.org/swift-book

import Foundation

@main
struct XXApp 
{

    static func main() 
    {
        var gestore = GestoreCalendario()
        gestore.eventi = caricaEventi (percorso: "Sources/XXApp/eventi.json")
        salvaEventi(evento: gestore.eventi, percorso: "Sources/XXApp/eventi.json")
    }
}

//let eventiOrdinati = eventi.sorted(by: { Evento1, Evento2 in Evento1.data > Evento2.data  })
//let eventiPers = eventi.filter({ Evento in Evento.categoria == CategoriaEvento.personale })
//let eventiTitoli = eventi.map({ Evento in Evento.titolo })