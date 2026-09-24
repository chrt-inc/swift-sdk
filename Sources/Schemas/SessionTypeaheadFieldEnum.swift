import Foundation

public enum SessionTypeaheadFieldEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case deviceMacAddress = "device_mac_address"
    case offChrtReferenceId = "off_chrt_reference_id"
    case flightNumbers = "flight_numbers"
}