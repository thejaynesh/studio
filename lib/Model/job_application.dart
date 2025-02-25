class JobApplication {
  final String jobPosition;
  final String companyName;
  final String message;
  final int viewCount;
  final String logo;

  JobApplication({
    required this.jobPosition,
    required this.companyName,
    required this.message,
    required this.logo,
    required this.viewCount
  });

  // Factory constructor to create an instance from Firestore data
  factory JobApplication.fromFirestore(Map<String, dynamic> data) {
    return JobApplication(
      jobPosition: data['JobPosition'] ?? 'Unknown Job Title',
      companyName: data['CompanyName'] ?? 'Unknown Company',
      message: data['Message'] ?? 'No description available.',
      viewCount: data['ViewCount'] ?? '0',
      logo: data['logo'] ?? ''
    );
  }

  // Optional: Add a method to convert an instance back to a map (if needed)
  Map<String, dynamic> toMap() {
    return {
      'JobPosition': jobPosition,
      'CompanyName': companyName,
      'Message': message,
      'ViewCount': viewCount,
      'logo': logo
    };
  }
}
