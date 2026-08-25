import Foundation

extension Requests {
    public struct TaskArtifactCustodyPartiesUpdateReq: Codable, Hashable, Sendable {
        public let providedBy: CustodyParty1?
        public let providedBySetToNone: Bool?
        public let receivedBy: CustodyParty1?
        public let receivedBySetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            providedBy: CustodyParty1? = nil,
            providedBySetToNone: Bool? = nil,
            receivedBy: CustodyParty1? = nil,
            receivedBySetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.providedBy = providedBy
            self.providedBySetToNone = providedBySetToNone
            self.receivedBy = receivedBy
            self.receivedBySetToNone = receivedBySetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.providedBy = try container.decodeIfPresent(CustodyParty1.self, forKey: .providedBy)
            self.providedBySetToNone = try container.decodeIfPresent(Bool.self, forKey: .providedBySetToNone)
            self.receivedBy = try container.decodeIfPresent(CustodyParty1.self, forKey: .receivedBy)
            self.receivedBySetToNone = try container.decodeIfPresent(Bool.self, forKey: .receivedBySetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.providedBy, forKey: .providedBy)
            try container.encodeIfPresent(self.providedBySetToNone, forKey: .providedBySetToNone)
            try container.encodeIfPresent(self.receivedBy, forKey: .receivedBy)
            try container.encodeIfPresent(self.receivedBySetToNone, forKey: .receivedBySetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case providedBy = "provided_by"
            case providedBySetToNone = "provided_by__set_to_None"
            case receivedBy = "received_by"
            case receivedBySetToNone = "received_by__set_to_None"
        }
    }
}