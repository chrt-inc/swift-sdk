import Foundation

extension Requests {
    public struct BodyPostOrgComplianceDocumentsS3ObjectAddV1OrgsComplianceDocumentsS3ObjectAddV1OrgComplianceDocumentIdPost {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostOrgComplianceDocumentsS3ObjectAddV1OrgsComplianceDocumentsS3ObjectAddV1OrgComplianceDocumentIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}