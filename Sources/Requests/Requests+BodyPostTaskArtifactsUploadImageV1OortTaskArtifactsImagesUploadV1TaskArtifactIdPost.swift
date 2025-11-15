import Foundation

extension Requests {
    public struct BodyPostTaskArtifactsUploadImageV1OortTaskArtifactsImagesUploadV1TaskArtifactIdPost {
        public let image: FormFile

        public init(
            image: FormFile
        ) {
            self.image = image
        }
    }
}

extension Requests.BodyPostTaskArtifactsUploadImageV1OortTaskArtifactsImagesUploadV1TaskArtifactIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(image, fieldName: "image")
        ]
    }
}