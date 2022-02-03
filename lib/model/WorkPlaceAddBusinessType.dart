//사업장 추가에 업종코드와 업태에 관한 모델 입니다.

//업종 제일 앞자리여서 A임
class WorkPlaceAddBusinessAcode{
  late String? aCode; //업종 코드
  late String? aName; //업종명

  WorkPlaceAddBusinessAcode(Map mapJson) {
    this.aCode = mapJson['aCode'];
    this.aName = mapJson['aName'];
  }
}

//업태 Detail Code
class WorkPlaceAddBusinessDcode{
  late String? aCode; //업종코드
  late String? dCode; //업테코드
  late String? dName; //업테이름

  WorkPlaceAddBusinessDcode(Map mapJson) {
    this.aCode = mapJson['aCode'];
    this.dCode = mapJson['dCode'];
    this.dName = mapJson['dName'];
  }
}