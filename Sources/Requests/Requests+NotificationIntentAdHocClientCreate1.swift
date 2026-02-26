import Foundation

extension Requests {
    public struct NotificationIntentAdHocClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let directoryEntryId: String
        public let emailEvents: [NotificationEventsForAdHocEnum]?
        public let pushEvents: [NotificationEventsForAdHocEnum]?
        public let smsEvents: [NotificationEventsForAdHocEnum]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            directoryEntryId: String,
            emailEvents: [NotificationEventsForAdHocEnum]? = nil,
            pushEvents: [NotificationEventsForAdHocEnum]? = nil,
            smsEvents: [NotificationEventsForAdHocEnum]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.directoryEntryId = directoryEntryId
            self.emailEvents = emailEvents
            self.pushEvents = pushEvents
            self.smsEvents = smsEvents
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.directoryEntryId = try container.decode(String.self, forKey: .directoryEntryId)
            self.emailEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .emailEvents)
            self.pushEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .pushEvents)
            self.smsEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .smsEvents)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.directoryEntryId, forKey: .directoryEntryId)
            try container.encodeIfPresent(self.emailEvents, forKey: .emailEvents)
            try container.encodeIfPresent(self.pushEvents, forKey: .pushEvents)
            try container.encodeIfPresent(self.smsEvents, forKey: .smsEvents)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case directoryEntryId = "directory_entry_id"
            case emailEvents = "email_events"
            case pushEvents = "push_events"
            case smsEvents = "sms_events"
        }
    }
}