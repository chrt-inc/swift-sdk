import Foundation

extension Requests {
    public struct BidThreadClientCreate1: Codable, Hashable, Sendable {
        public let action: BidActionEnum
        public let proFormaLineItems: [ProFormaLineItem1]?
        public let comment: String?
        public let schemaVersion: Int?
        public let listingId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            action: BidActionEnum,
            proFormaLineItems: [ProFormaLineItem1]? = nil,
            comment: String? = nil,
            schemaVersion: Int? = nil,
            listingId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.action = action
            self.proFormaLineItems = proFormaLineItems
            self.comment = comment
            self.schemaVersion = schemaVersion
            self.listingId = listingId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.action = try container.decode(BidActionEnum.self, forKey: .action)
            self.proFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .proFormaLineItems)
            self.comment = try container.decodeIfPresent(String.self, forKey: .comment)
            self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
            self.listingId = try container.decode(String.self, forKey: .listingId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.action, forKey: .action)
            try container.encodeIfPresent(self.proFormaLineItems, forKey: .proFormaLineItems)
            try container.encodeIfPresent(self.comment, forKey: .comment)
            try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.listingId, forKey: .listingId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case action
            case proFormaLineItems = "pro_forma_line_items"
            case comment
            case schemaVersion = "schema_version"
            case listingId = "listing_id"
        }
    }
}