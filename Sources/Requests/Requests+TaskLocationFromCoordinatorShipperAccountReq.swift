import Foundation

extension Requests {
    public struct TaskLocationFromCoordinatorShipperAccountReq: Codable, Hashable, Sendable {
        public let coordinatorShipperAccountId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorShipperAccountId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorShipperAccountId = coordinatorShipperAccountId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorShipperAccountId = try container.decode(String.self, forKey: .coordinatorShipperAccountId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.coordinatorShipperAccountId, forKey: .coordinatorShipperAccountId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorShipperAccountId = "coordinator_shipper_account_id"
        }
    }
}