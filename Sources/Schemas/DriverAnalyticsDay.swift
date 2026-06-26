import Foundation

public struct DriverAnalyticsDay: Codable, Hashable, Sendable {
    public let day: String
    /// Observed GPS mileage from same-day driver ping segments fetched inside merged task-group in-progress intervals. Cross-interval and cross-midnight segments are dropped.
    public let observedMileageOrderInProgressDeduped: Double
    /// Observed GPS mileage remaining after subtracting order in-progress mileage from total on this UTC day. Includes off-clock segments and cross-interval boundary segments.
    public let observedMileageOrderNotInProgress: Double
    /// Total observed GPS mileage from all same-day driver ping segments on this UTC day. Cross-midnight segments are dropped.
    public let observedMileageTotal: Double
    /// Driver self-reported hours and mileage record for this UTC calendar day, if one exists.
    public let selfReportedHoursAndMileage: DriverSelfReportedHoursAndMileage1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        day: String,
        observedMileageOrderInProgressDeduped: Double,
        observedMileageOrderNotInProgress: Double,
        observedMileageTotal: Double,
        selfReportedHoursAndMileage: DriverSelfReportedHoursAndMileage1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.day = day
        self.observedMileageOrderInProgressDeduped = observedMileageOrderInProgressDeduped
        self.observedMileageOrderNotInProgress = observedMileageOrderNotInProgress
        self.observedMileageTotal = observedMileageTotal
        self.selfReportedHoursAndMileage = selfReportedHoursAndMileage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.day = try container.decode(String.self, forKey: .day)
        self.observedMileageOrderInProgressDeduped = try container.decode(Double.self, forKey: .observedMileageOrderInProgressDeduped)
        self.observedMileageOrderNotInProgress = try container.decode(Double.self, forKey: .observedMileageOrderNotInProgress)
        self.observedMileageTotal = try container.decode(Double.self, forKey: .observedMileageTotal)
        self.selfReportedHoursAndMileage = try container.decodeIfPresent(DriverSelfReportedHoursAndMileage1.self, forKey: .selfReportedHoursAndMileage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.day, forKey: .day)
        try container.encode(self.observedMileageOrderInProgressDeduped, forKey: .observedMileageOrderInProgressDeduped)
        try container.encode(self.observedMileageOrderNotInProgress, forKey: .observedMileageOrderNotInProgress)
        try container.encode(self.observedMileageTotal, forKey: .observedMileageTotal)
        try container.encodeIfPresent(self.selfReportedHoursAndMileage, forKey: .selfReportedHoursAndMileage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case day
        case observedMileageOrderInProgressDeduped = "observed_mileage_order_in_progress_deduped"
        case observedMileageOrderNotInProgress = "observed_mileage_order_not_in_progress"
        case observedMileageTotal = "observed_mileage_total"
        case selfReportedHoursAndMileage = "self_reported_hours_and_mileage"
    }
}