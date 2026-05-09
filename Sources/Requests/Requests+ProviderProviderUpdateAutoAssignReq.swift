import Foundation

extension Requests {
    public struct ProviderProviderUpdateAutoAssignReq: Codable, Hashable, Sendable {
        public let autoAssignEnabled: Bool
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            autoAssignEnabled: Bool,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.autoAssignEnabled = autoAssignEnabled
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.autoAssignEnabled = try container.decode(Bool.self, forKey: .autoAssignEnabled)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.autoAssignEnabled, forKey: .autoAssignEnabled)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case autoAssignEnabled = "auto_assign_enabled"
        }
    }
}