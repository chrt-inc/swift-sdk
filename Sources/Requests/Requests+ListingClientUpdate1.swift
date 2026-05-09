import Foundation

extension Requests {
    public struct ListingClientUpdate1: Codable, Hashable, Sendable {
        public let listingDescription: String?
        public let proFormaLineItems: [ProFormaLineItem1]?
        public let shareProFormaLineItems: Bool?
        public let type: ListingTypeEnum?
        public let autoAwardFirstAccept: Bool?
        public let internalNotes: String?
        public let internalNotesSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            listingDescription: String? = nil,
            proFormaLineItems: [ProFormaLineItem1]? = nil,
            shareProFormaLineItems: Bool? = nil,
            type: ListingTypeEnum? = nil,
            autoAwardFirstAccept: Bool? = nil,
            internalNotes: String? = nil,
            internalNotesSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.listingDescription = listingDescription
            self.proFormaLineItems = proFormaLineItems
            self.shareProFormaLineItems = shareProFormaLineItems
            self.type = type
            self.autoAwardFirstAccept = autoAwardFirstAccept
            self.internalNotes = internalNotes
            self.internalNotesSetToNone = internalNotesSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.listingDescription = try container.decodeIfPresent(String.self, forKey: .listingDescription)
            self.proFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .proFormaLineItems)
            self.shareProFormaLineItems = try container.decodeIfPresent(Bool.self, forKey: .shareProFormaLineItems)
            self.type = try container.decodeIfPresent(ListingTypeEnum.self, forKey: .type)
            self.autoAwardFirstAccept = try container.decodeIfPresent(Bool.self, forKey: .autoAwardFirstAccept)
            self.internalNotes = try container.decodeIfPresent(String.self, forKey: .internalNotes)
            self.internalNotesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .internalNotesSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.listingDescription, forKey: .listingDescription)
            try container.encodeIfPresent(self.proFormaLineItems, forKey: .proFormaLineItems)
            try container.encodeIfPresent(self.shareProFormaLineItems, forKey: .shareProFormaLineItems)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.autoAwardFirstAccept, forKey: .autoAwardFirstAccept)
            try container.encodeIfPresent(self.internalNotes, forKey: .internalNotes)
            try container.encodeIfPresent(self.internalNotesSetToNone, forKey: .internalNotesSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case listingDescription = "listing_description"
            case proFormaLineItems = "pro_forma_line_items"
            case shareProFormaLineItems = "share_pro_forma_line_items"
            case type
            case autoAwardFirstAccept = "auto_award_first_accept"
            case internalNotes = "internal_notes"
            case internalNotesSetToNone = "internal_notes__set_to_None"
        }
    }
}