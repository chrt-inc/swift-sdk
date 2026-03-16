import Foundation

/// https://github.com/champ-cargosystems-gmbh/cargojson.champ.aero/blob/master/src/main/java/aero/champ/cargojson/common/ParticipantAddressType.java
public enum CargojsonParticipantAddressType: String, Codable, Hashable, CaseIterable, Sendable {
    case pima = "PIMA"
    case tty = "TTY"
    case carrierCode3N = "CARRIER_CODE_3N"
    case iataCarrierCode = "IATA_CARRIER_CODE"
    case email = "EMAIL"
    case website = "WEBSITE"
    case unnkown = "UNNKOWN"
}