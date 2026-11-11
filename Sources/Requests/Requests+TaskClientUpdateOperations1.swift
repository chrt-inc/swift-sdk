import Foundation

extension Requests {
    public struct TaskClientUpdateOperations1: Codable, Hashable, Sendable {
        public let action: ActionType?
        public let datetimeWindows: [DateTimeWindow1]?
        public let location: LocationFeature?
        public let locationSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            action: ActionType? = nil,
            datetimeWindows: [DateTimeWindow1]? = nil,
            location: LocationFeature? = nil,
            locationSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.action = action
            self.datetimeWindows = datetimeWindows
            self.location = location
            self.locationSetToNone = locationSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.action = try container.decodeIfPresent(ActionType.self, forKey: .action)
            self.datetimeWindows = try container.decodeIfPresent([DateTimeWindow1].self, forKey: .datetimeWindows)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.locationSetToNone = try container.decodeIfPresent(Bool.self, forKey: .locationSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.action, forKey: .action)
            try container.encodeIfPresent(self.datetimeWindows, forKey: .datetimeWindows)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.locationSetToNone, forKey: .locationSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case action
            case datetimeWindows = "datetime_windows"
            case location
            case locationSetToNone = "location__set_to_None"
        }
    }
}