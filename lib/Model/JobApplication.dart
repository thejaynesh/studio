class JobApplication {
  final String JobPosition;
  final String CompanyName;
  final String Message;
  final int ViewCount;
  final String logo;

  JobApplication({
    required this.JobPosition,
    required this.CompanyName,
    required this.Message,
    required this.logo,
    required this.ViewCount
  });

  // Factory constructor to create an instance from Firestore data
  factory JobApplication.fromFirestore(Map<String, dynamic> data) {
    return JobApplication(
      JobPosition: data['JobPosition'] ?? 'Unknown Job Title',
      CompanyName: data['CompanyName'] ?? 'Unknown Company',
      Message: data['Message'] ?? 'No description available.',
      ViewCount: data['ViewCount'] ?? '0',
      logo: data['logo'] ?? ''
    );
  }

  // Optional: Add a method to convert an instance back to a map (if needed)
  Map<String, dynamic> toMap() {
    return {
      'JobPosition': JobPosition,
      'CompanyName': CompanyName,
      'Message': Message,
      'ViewCount': ViewCount,
      'logo': logo
    };
  }
}
