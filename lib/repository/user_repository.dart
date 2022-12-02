class UserRepository {
  // Future<SignupModel> patientRegisterRequest({
  //   required String firstName,
  //   required String phoneNumber,
  //   required String lastName,
  //   required String age,
  //   required String gender,
  //   required String jobTittle,
  //   required String city,
  //   required String area,
  //   required String addressLine1,
  //   required String AlKasrAlAiniCode,
  //   required var image,
  // }) async {
  //   var data = jsonEncode(<String, dynamic>{
  //     'firstName': firstName,
  //     'phoneNumber': phoneNumber,
  //     'lastName': lastName,
  //     'age': age,
  //     'gender': gender,
  //     'jobTittle': jobTittle,
  //     'city': city,
  //     'area': area,
  //     'addressLine1': addressLine1,
  //     'AlKasrAlAiniCode': AlKasrAlAiniCode,
  //   });
  //   return SignupModel.fromJson(await NetworkCall.makeCall(
  //     endPoint: '/api/patient/register',
  //     method: HttpMethod.POST,
  //     requestBody: data,
  //     isMultipart: true,
  //     multiPartValues: [await http.MultipartFile.fromPath("image", image)],
  //   ));
  // }
}
