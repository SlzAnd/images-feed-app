class Photo {
  final String id;
  final String description;
  final String imageUrl;

  Photo(this.id, this.description, this.imageUrl);

  factory Photo.fromJson(Map<String, dynamic> response) {
    return Photo(response['id'] ?? '', response['description'] ?? '', response['urls']['regular'] ?? '');
  }

}