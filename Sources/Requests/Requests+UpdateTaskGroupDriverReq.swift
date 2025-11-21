import Foundation

extension Requests {
    public struct UpdateTaskGroupDriverReq: Codable, Hashable, Sendable {
        public let removeDriver: Bool?
        public let setDriverId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            removeDriver: Bool? = nil,
            setDriverId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.removeDriver = removeDriver
            self.setDriverId = setDriverId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.removeDriver = try container.decodeIfPresent(Bool.self, forKey: .removeDriver)
            self.setDriverId = try container.decodeIfPresent(String.self, forKey: .setDriverId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.removeDriver, forKey: .removeDriver)
            try container.encodeIfPresent(self.setDriverId, forKey: .setDriverId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case removeDriver = "remove_driver"
            case setDriverId = "set_driver_id"
        }
    }
}