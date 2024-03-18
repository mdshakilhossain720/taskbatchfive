
class ResponseObject{
  bool issuccess;
  final int statuscode;
  final dynamic responseBODY;
  final String? errorMessage;
  ResponseObject({required this .issuccess, required this.statuscode, required this.responseBODY, this.errorMessage=''});



}