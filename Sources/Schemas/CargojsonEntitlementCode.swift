import Foundation

/// https://github.com/champ-cargosystems-gmbh/cargojson.champ.aero/blob/master/src/main/java/aero/champ/cargojson/airwaybill/EntitlementCode.java
public enum CargojsonEntitlementCode: String, Codable, Hashable, CaseIterable, Sendable {
    case agent = "Agent"
    case carrier = "Carrier"
}