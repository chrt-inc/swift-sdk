import Foundation

extension Requests {
    public struct CargoOnFlightIntegrationsCargoAiCancelReq: Codable, Hashable, Sendable {
        public let cancellationReason: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cancellationReason: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cancellationReason = cancellationReason
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cancellationReason = try container.decode(String.self, forKey: .cancellationReason)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.cancellationReason, forKey: .cancellationReason)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cancellationReason = "cancellation_reason"
        }
    }
}