import Foundation

extension Requests {
    public struct TaskLocationFromReferenceReq: Codable, Hashable, Sendable {
        public let contactId: String?
        public let coordinatorShipperAccountId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contactId: String? = nil,
            coordinatorShipperAccountId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contactId = contactId
            self.coordinatorShipperAccountId = coordinatorShipperAccountId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contactId = try container.decodeIfPresent(String.self, forKey: .contactId)
            self.coordinatorShipperAccountId = try container.decodeIfPresent(String.self, forKey: .coordinatorShipperAccountId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.contactId, forKey: .contactId)
            try container.encodeIfPresent(self.coordinatorShipperAccountId, forKey: .coordinatorShipperAccountId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contactId = "contact_id"
            case coordinatorShipperAccountId = "coordinator_shipper_account_id"
        }
    }
}