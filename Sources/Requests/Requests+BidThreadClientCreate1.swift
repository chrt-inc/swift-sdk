import Foundation

extension Requests {
    public struct BidThreadClientCreate1: Codable, Hashable, Sendable {
        public let action: BidActionEnum
        public let comment: String?
        public let listingId: String
        public let proFormaLineItems: [ProFormaLineItem1]?
        public let schemaVersion: Int?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            action: BidActionEnum,
            comment: String? = nil,
            listingId: String,
            proFormaLineItems: [ProFormaLineItem1]? = nil,
            schemaVersion: Int? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.action = action
            self.comment = comment
            self.listingId = listingId
            self.proFormaLineItems = proFormaLineItems
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.action = try container.decode(BidActionEnum.self, forKey: .action)
            self.comment = try container.decodeIfPresent(String.self, forKey: .comment)
            self.listingId = try container.decode(String.self, forKey: .listingId)
            self.proFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .proFormaLineItems)
            self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.action, forKey: .action)
            try container.encodeIfPresent(self.comment, forKey: .comment)
            try container.encode(self.listingId, forKey: .listingId)
            try container.encodeIfPresent(self.proFormaLineItems, forKey: .proFormaLineItems)
            try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case action
            case comment
            case listingId = "listing_id"
            case proFormaLineItems = "pro_forma_line_items"
            case schemaVersion = "schema_version"
        }
    }
}