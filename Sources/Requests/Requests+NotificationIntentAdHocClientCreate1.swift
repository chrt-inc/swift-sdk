import Foundation

extension Requests {
    public struct NotificationIntentAdHocClientCreate1: Codable, Hashable, Sendable {
        public let directoryEntryId: String
        public let emailEvents: [NotificationEventsForAdHocEnum]?
        public let pushEvents: [NotificationEventsForAdHocEnum]?
        public let schemaVersion: Int
        public let smsEvents: [NotificationEventsForAdHocEnum]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            directoryEntryId: String,
            emailEvents: [NotificationEventsForAdHocEnum]? = nil,
            pushEvents: [NotificationEventsForAdHocEnum]? = nil,
            schemaVersion: Int,
            smsEvents: [NotificationEventsForAdHocEnum]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.directoryEntryId = directoryEntryId
            self.emailEvents = emailEvents
            self.pushEvents = pushEvents
            self.schemaVersion = schemaVersion
            self.smsEvents = smsEvents
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.directoryEntryId = try container.decode(String.self, forKey: .directoryEntryId)
            self.emailEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .emailEvents)
            self.pushEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .pushEvents)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.smsEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .smsEvents)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.directoryEntryId, forKey: .directoryEntryId)
            try container.encodeIfPresent(self.emailEvents, forKey: .emailEvents)
            try container.encodeIfPresent(self.pushEvents, forKey: .pushEvents)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.smsEvents, forKey: .smsEvents)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case directoryEntryId = "directory_entry_id"
            case emailEvents = "email_events"
            case pushEvents = "push_events"
            case schemaVersion = "schema_version"
            case smsEvents = "sms_events"
        }
    }
}