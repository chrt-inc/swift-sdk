import Foundation

extension Requests {
    public struct ScheduledHelloPocReq: Codable, Hashable, Sendable {
        public let driverName: String
        public let scheduleSpec: ScheduleSpec?
        public let catchupWindowSeconds: Int?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            driverName: String,
            scheduleSpec: ScheduleSpec? = nil,
            catchupWindowSeconds: Int? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.driverName = driverName
            self.scheduleSpec = scheduleSpec
            self.catchupWindowSeconds = catchupWindowSeconds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.driverName = try container.decode(String.self, forKey: .driverName)
            self.scheduleSpec = try container.decodeIfPresent(ScheduleSpec.self, forKey: .scheduleSpec)
            self.catchupWindowSeconds = try container.decodeIfPresent(Int.self, forKey: .catchupWindowSeconds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.driverName, forKey: .driverName)
            try container.encodeIfPresent(self.scheduleSpec, forKey: .scheduleSpec)
            try container.encodeIfPresent(self.catchupWindowSeconds, forKey: .catchupWindowSeconds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case driverName = "driver_name"
            case scheduleSpec = "schedule_spec"
            case catchupWindowSeconds = "catchup_window_seconds"
        }
    }
}