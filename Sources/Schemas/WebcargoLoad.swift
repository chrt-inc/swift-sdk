import Foundation

public struct WebcargoLoad: Codable, Hashable, Sendable {
    public let netWeight: WebcargoValueWithUnit?
    public let netVolumeMeasure: WebcargoValueWithUnit?
    public let totalChargeableWeight: WebcargoValueWithUnit?
    public let totalQuantity: String?
    public let packages: [WebcargoPackage]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        netWeight: WebcargoValueWithUnit? = nil,
        netVolumeMeasure: WebcargoValueWithUnit? = nil,
        totalChargeableWeight: WebcargoValueWithUnit? = nil,
        totalQuantity: String? = nil,
        packages: [WebcargoPackage]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.netWeight = netWeight
        self.netVolumeMeasure = netVolumeMeasure
        self.totalChargeableWeight = totalChargeableWeight
        self.totalQuantity = totalQuantity
        self.packages = packages
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.netWeight = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .netWeight)
        self.netVolumeMeasure = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .netVolumeMeasure)
        self.totalChargeableWeight = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .totalChargeableWeight)
        self.totalQuantity = try container.decodeIfPresent(String.self, forKey: .totalQuantity)
        self.packages = try container.decodeIfPresent([WebcargoPackage].self, forKey: .packages)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.netWeight, forKey: .netWeight)
        try container.encodeIfPresent(self.netVolumeMeasure, forKey: .netVolumeMeasure)
        try container.encodeIfPresent(self.totalChargeableWeight, forKey: .totalChargeableWeight)
        try container.encodeIfPresent(self.totalQuantity, forKey: .totalQuantity)
        try container.encodeIfPresent(self.packages, forKey: .packages)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case netWeight = "net_weight"
        case netVolumeMeasure = "net_volume_measure"
        case totalChargeableWeight = "total_chargeable_weight"
        case totalQuantity = "total_quantity"
        case packages
    }
}