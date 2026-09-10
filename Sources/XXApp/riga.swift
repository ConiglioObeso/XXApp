import SwiftUI

struct RigaEvento: View
{
    let evento = Evento

    var body: some View
    {
        VStack (alignment: .leading)
        {
            Text (evento.titolo).font(.headline)
            Text (evento.data.formatted()).font(.caption).foregroundStyle(.secondary)
        }
    }
}