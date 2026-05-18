import Foundation

extension Requests {
    public struct CaseNeedsActionReq: Codable, Hashable, Sendable {
        public let needsAction: Bool
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            needsAction: Bool,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.needsAction = needsAction
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.needsAction = try container.decode(Bool.self, forKey: .needsAction)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.needsAction, forKey: .needsAction)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case needsAction = "needs_action"
        }
    }
}