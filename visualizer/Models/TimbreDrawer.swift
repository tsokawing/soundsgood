//
//  TimbreDrawer.swift
//  visualizer
//
//  Created by Mark Cheng on 15/2/2022.
//

import Foundation

struct TimbreDrawer: Codable {
    var selected: InstrumentTypes
    
    static let `default` = TimbreDrawer(
        selected: .violin
    )
    
    enum InstrumentTypes: String, Identifiable, Codable {
        case piano
        case violin
        case cello
        case flute
        
        var id: String { rawValue }
        
        var label: String {
            switch self {
            case .piano: return "Piano"
            case .violin: return "Violin"
            case .cello: return "Cello"
            case .flute: return "Flute"
            }
          }
        
        var icon: String {
            switch self {
            case .piano: return "pianokeys"
            case .violin: return "music.quarternote.3"
            case .cello: return "music.quarternote.3"
            case .flute: return "music.quarternote.3"
            }
        }
    }
}
