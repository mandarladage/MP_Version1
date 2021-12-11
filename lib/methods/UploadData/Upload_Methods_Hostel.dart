import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference hostels = FirebaseFirestore.instance.collection('Hostel');

// This is method to add hostel main collection to firebase hostel module
Future<void> addHostelUserCollection(fName, lName, cnNo, email, addr, h_Name,
    neraby_clg, rent, rent_cycles, avRooms) {
  // Call the user's CollectionReference to add a new user
  return hostels
      .doc(email)
      .set({
        'HO_fName': fName, // John Doe
        'HO_lName': lName, // Stokes and Sons
        'HO_cnNo': cnNo, // 42
        'HO_email': email, //
        'HO_addr': addr,
        'HO_Name': h_Name,
        'is_approved': 0,
        'HO_nearby_clg': neraby_clg, // 42
        'HO_avil_rooms': avRooms,
        'HO_rent': rent,
        'HO_rent_cycles': h_Name,
      })
      .then((value) => print("Hostel User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}

// This is method to add hostel main collection to firebase hostel module
Future<void> addHostelUserPhotosCollection(email, h_pro_pic, pic) {
  return hostels
      .doc(email)
      .collection("Photos")
      .doc("$email|Photos")
      .set({
        'h_pro_pic': h_pro_pic, // John Doe
        'pic': pic, // Stokes and Sons
      })
      .then((value) => print("Photos Collection Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
