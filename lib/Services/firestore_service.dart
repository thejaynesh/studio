import 'package:cloud_firestore/cloud_firestore.dart';
import '../Model/job_application.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Fetch a Firestore document by its ID, or fallback to a default document.
  Future<JobApplication> fetchJobApplication(String? trckParam) async {
    try {
      DocumentSnapshot documentSnapshot;

      // Fetch the primary document if trckParam is provided
      if (trckParam != null && trckParam.isNotEmpty) {

        documentSnapshot = await _firestore
            .collection('JobApplication')
            .doc(trckParam)
            .get();

        if (documentSnapshot.exists) {
          return JobApplication.fromFirestore(
            documentSnapshot.data() as Map<String, dynamic>,
          );
        }
      }

      // Fetch the fallback document
      documentSnapshot = await _firestore
          .collection('JobApplication')
          .doc('generic') // Fallback document ID
          .get();

      if (documentSnapshot.exists) {
        return JobApplication.fromFirestore(
          documentSnapshot.data() as Map<String, dynamic>,
        );
      } else {
        throw Exception('Fallback document not found.');
      }
    } catch (e) {
      throw Exception('Error fetching data from Firestore.');
    }
  }
}
