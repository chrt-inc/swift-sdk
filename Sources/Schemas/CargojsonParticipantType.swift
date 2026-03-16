import Foundation

/// https://github.com/champ-cargosystems-gmbh/cargojson.champ.aero/blob/master/src/main/java/aero/champ/cargojson/common/ParticipantType.java
public enum CargojsonParticipantType: String, Codable, Hashable, CaseIterable, Sendable {
    case air = "AIR"
    case apt = "APT"
    case agt = "AGT"
    case brk = "BRK"
    case cag = "CAG"
    case cne = "CNE"
    case ctm = "CTM"
    case dcl = "DCL"
    case dec = "DEC"
    case ffw = "FFW"
    case gha = "GHA"
    case ptt = "PTT"
    case shp = "SHP"
    case trk = "TRK"
}