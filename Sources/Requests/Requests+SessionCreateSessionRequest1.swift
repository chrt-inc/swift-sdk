import Foundation

extension Requests {
    public struct SessionCreateSessionRequest1: Codable, Hashable, Sendable {
        public let deviceMacAddress: String
        public let comments: String?
        public let offChrtOrderId: String?
        public let flightNumber: String?
        public let faFlightIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            deviceMacAddress: String,
            comments: String? = nil,
            offChrtOrderId: String? = nil,
            flightNumber: String? = nil,
            faFlightIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.deviceMacAddress = deviceMacAddress
            self.comments = comments
            self.offChrtOrderId = offChrtOrderId
            self.flightNumber = flightNumber
            self.faFlightIds = faFlightIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.offChrtOrderId = try container.decodeIfPresent(String.self, forKey: .offChrtOrderId)
            self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
            self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.offChrtOrderId, forKey: .offChrtOrderId)
            try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
            try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case deviceMacAddress = "device_mac_address"
            case comments
            case offChrtOrderId = "off_chrt_order_id"
            case flightNumber = "flight_number"
            case faFlightIds = "fa_flight_ids"
        }
    }
}