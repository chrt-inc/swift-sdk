import Foundation

/// Structured, factual description of a task-artifact image produced by an LLM.
/// 
/// Stored on `TaskArtifactS3ObjectMetadata1.ai_image_description` so downstream
/// consumers (Q&A, search, audit, case checks) can answer questions about the
/// artifact without re-sending the image. `model` records which LLM produced
/// the description; `provider` is derived from `model` so the two can never
/// disagree.
public struct AiImageDescription: Codable, Hashable, Sendable {
    public let schemaVersion: Int?
    public let model: LlmModelEnum
    public let summary: String
    public let packageCount: Int?
    public let packageTypes: [String]
    public let packageAppearance: String
    public let readablePackageText: [String]
    public let cargoIdentityAssessment: String
    public let locationDescription: String
    public let locationIdentifiers: [String]
    public let completionEvidence: String
    public let proofNotes: [String]
    public let disputeDefensibility: String
    public let searchableFacts: [String]?
    public let unresolvedQuestions: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int? = nil,
        model: LlmModelEnum,
        summary: String,
        packageCount: Int? = nil,
        packageTypes: [String],
        packageAppearance: String,
        readablePackageText: [String],
        cargoIdentityAssessment: String,
        locationDescription: String,
        locationIdentifiers: [String],
        completionEvidence: String,
        proofNotes: [String],
        disputeDefensibility: String,
        searchableFacts: [String]? = nil,
        unresolvedQuestions: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.model = model
        self.summary = summary
        self.packageCount = packageCount
        self.packageTypes = packageTypes
        self.packageAppearance = packageAppearance
        self.readablePackageText = readablePackageText
        self.cargoIdentityAssessment = cargoIdentityAssessment
        self.locationDescription = locationDescription
        self.locationIdentifiers = locationIdentifiers
        self.completionEvidence = completionEvidence
        self.proofNotes = proofNotes
        self.disputeDefensibility = disputeDefensibility
        self.searchableFacts = searchableFacts
        self.unresolvedQuestions = unresolvedQuestions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.model = try container.decode(LlmModelEnum.self, forKey: .model)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.packageCount = try container.decodeIfPresent(Int.self, forKey: .packageCount)
        self.packageTypes = try container.decode([String].self, forKey: .packageTypes)
        self.packageAppearance = try container.decode(String.self, forKey: .packageAppearance)
        self.readablePackageText = try container.decode([String].self, forKey: .readablePackageText)
        self.cargoIdentityAssessment = try container.decode(String.self, forKey: .cargoIdentityAssessment)
        self.locationDescription = try container.decode(String.self, forKey: .locationDescription)
        self.locationIdentifiers = try container.decode([String].self, forKey: .locationIdentifiers)
        self.completionEvidence = try container.decode(String.self, forKey: .completionEvidence)
        self.proofNotes = try container.decode([String].self, forKey: .proofNotes)
        self.disputeDefensibility = try container.decode(String.self, forKey: .disputeDefensibility)
        self.searchableFacts = try container.decodeIfPresent([String].self, forKey: .searchableFacts)
        self.unresolvedQuestions = try container.decodeIfPresent([String].self, forKey: .unresolvedQuestions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.model, forKey: .model)
        try container.encode(self.summary, forKey: .summary)
        try container.encodeIfPresent(self.packageCount, forKey: .packageCount)
        try container.encode(self.packageTypes, forKey: .packageTypes)
        try container.encode(self.packageAppearance, forKey: .packageAppearance)
        try container.encode(self.readablePackageText, forKey: .readablePackageText)
        try container.encode(self.cargoIdentityAssessment, forKey: .cargoIdentityAssessment)
        try container.encode(self.locationDescription, forKey: .locationDescription)
        try container.encode(self.locationIdentifiers, forKey: .locationIdentifiers)
        try container.encode(self.completionEvidence, forKey: .completionEvidence)
        try container.encode(self.proofNotes, forKey: .proofNotes)
        try container.encode(self.disputeDefensibility, forKey: .disputeDefensibility)
        try container.encodeIfPresent(self.searchableFacts, forKey: .searchableFacts)
        try container.encodeIfPresent(self.unresolvedQuestions, forKey: .unresolvedQuestions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case model
        case summary
        case packageCount = "package_count"
        case packageTypes = "package_types"
        case packageAppearance = "package_appearance"
        case readablePackageText = "readable_package_text"
        case cargoIdentityAssessment = "cargo_identity_assessment"
        case locationDescription = "location_description"
        case locationIdentifiers = "location_identifiers"
        case completionEvidence = "completion_evidence"
        case proofNotes = "proof_notes"
        case disputeDefensibility = "dispute_defensibility"
        case searchableFacts = "searchable_facts"
        case unresolvedQuestions = "unresolved_questions"
    }
}