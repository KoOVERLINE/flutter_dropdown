
import 'dart:convert';

import 'package:flutter_dropdown/model/WorkPlaceAddBusinessType.dart';

//업종코드 버전2
Future<Map<String, String>> bsAcode() async {
  String jsonData =
      '{"items" : [{"aCode" : "A", "aName" : "농업, 임업 및 어업"},{"aCode" : "B", "aName" : "광업"},{"aCode" : "C", "aName" : "제조업"},{"aCode" : "D", "aName" : "전기, 가스, 증기 및 공기 조절 공급업"},{"aCode" : "E", "aName" : "수도, 하수 및 폐기물 처리, 원료 재생업"},{"aCode" : "F", "aName" : "건설업"},{"aCode" : "G", "aName" : "도매 및 소매업"},{"aCode" : "H", "aName" : "운수 및 창고업"},{"aCode" : "I", "aName" : "숙박 및 음식점업"},{"aCode" : "J", "aName" : "정보통신업"},{"aCode" : "K", "aName" : "금융 및 보험업"},{"aCode" : "L", "aName" : "부동산업"},{"aCode" : "M", "aName" : "전문, 과학 및 기술 서비스업"},{"aCode" : "N", "aName" : "사업시설 관리, 사업 지원 및 임대 서비스업"},{"aCode" : "O", "aName" : "공공 행정, 국방 및 사회보장 행정"},{"aCode" : "P", "aName" : "교육서비스업"},{"aCode" : "Q", "aName" : "보건업 및 사회복지 서비스업"},{"aCode" : "R", "aName" : "예술, 스포츠 및 여가관련 서비스업"},{"aCode" : "S", "aName" : "협회 및 단체, 수리 및 기타 개인 서비스업"},{"aCode" : "T", "aName" : "가구 내 고용활동 및 달리 분류되지 않은 자가 소비 생산활동"},{"aCode" : "U", "aName" : "국제 및 외국기관"}]}';

  dynamic jsonItem = json.decode(jsonData);
  List fData = jsonItem['items'];
  List flData = List.generate(
    0,
        (index) => index,
  );

  fData.forEach((element) {
    flData.add(WorkPlaceAddBusinessAcode(element));
  });

  Map<String, String>? bsAdata = {};
  for (int i = 0; i < flData.length; i++) {
    bsAdata[flData[i].aCode] = flData[i].aName;
  }

  return bsAdata;
}

//업태 코드
Future<Map<String, String>> bsDCode(String aCode) async{

  String jsonData =
      '{"items" : [{"aCode" : "X", "dCode" : "0000", "dName" : "선택하세요"}, {"aCode" : "A", "dCode" : "0110", "dName" : "곡물 및 기타 식량작물 재배업"},{"aCode" : "A", "dCode" : "0110", "dName" : "채소작물 재배업"},{"aCode" : "A", "dCode" : "0110", "dName" : "화훼작물 재배업"},{"aCode" : "A", "dCode" : "0110", "dName" : "종자 및 묘목 생산업"},{"aCode" : "A", "dCode" : "0110", "dName" : "과실작물 재배업"},{"aCode" : "B", "dCode" : "1010", "dName" : "석탄 광업"},{"aCode" : "B", "dCode" : "1010", "dName" : "그 외 기타 비금속광물 광업"},{"aCode" : "B", "dCode" : "1310", "dName" : "철 광업"},{"aCode" : "B", "dCode" : "1310", "dName" : "비철금속 광업"},{"aCode" : "B", "dCode" : "1320", "dName" : "비철금속 광업"},{"aCode" : "C", "dCode" : "1511", "dName" : "육류 도축업(가금류 제외)"},{"aCode" : "C", "dCode" : "1511", "dName" : "가금류 가공 및 저장 처리업"},{"aCode" : "C", "dCode" : "1511", "dName" : "가금류 도축업"},{"aCode" : "C", "dCode" : "1511", "dName" : "육류 포장육 및 냉동육 가공업(가금류 제외)"},{"aCode" : "C", "dCode" : "1511", "dName" : "육류 기타 가공 및 저장 처리업(가금류 제외)"},{"aCode" : "D", "dCode" : "4010", "dName" : "태양력 발전업"},{"aCode" : "D", "dCode" : "4010", "dName" : "원자력 발전업"},{"aCode" : "D", "dCode" : "4010", "dName" : "수력 발전업"},{"aCode" : "D", "dCode" : "4010", "dName" : "화력 발전업"},{"aCode" : "D", "dCode" : "4010", "dName" : "기타 발전업"},{"aCode" : "E", "dCode" : "3511", "dName" : "금속류 해체 및 선별업"},{"aCode" : "E", "dCode" : "3710", "dName" : "금속류 원료 재생업"},{"aCode" : "E", "dCode" : "3710", "dName" : "금속류 해체 및 선별업"},{"aCode" : "E", "dCode" : "3720", "dName" : "비금속류 원료 재생업"},{"aCode" : "E", "dCode" : "3720", "dName" : "비금속류 해체 및 선별업"},{"aCode" : "F", "dCode" : "4511", "dName" : "아파트 건설업"},{"aCode" : "F", "dCode" : "4511", "dName" : "주거용 건물 건설업"},{"aCode" : "F", "dCode" : "4511", "dName" : "주거용 건물 건설업"},{"aCode" : "F", "dCode" : "4511", "dName" : "기타 비주거용 건물 건설업"},{"aCode" : "F", "dCode" : "4511", "dName" : "단독 주택 건설업"},{"aCode" : "G", "dCode" : "5011", "dName" : "자동차 신품 판매업"},{"aCode" : "G", "dCode" : "5011", "dName" : "중고 자동차 판매업"},{"aCode" : "G", "dCode" : "5012", "dName" : "자동차 신품 판매업"},{"aCode" : "G", "dCode" : "5012", "dName" : "중고 자동차 판매업"},{"aCode" : "G", "dCode" : "5013", "dName" : "자동차 신품 판매업"},{"aCode" : "H", "dCode" : "6010", "dName" : "도시철도 운송업"},{"aCode" : "H", "dCode" : "6010", "dName" : "철도 여객 운송업"},{"aCode" : "H", "dCode" : "6010", "dName" : "철도 화물 운송업"},{"aCode" : "H", "dCode" : "6021", "dName" : "시외버스 운송업"},{"aCode" : "H", "dCode" : "6021", "dName" : "시외버스 운송업"},{"aCode" : "I", "dCode" : "5510", "dName" : "호텔업"},{"aCode" : "I", "dCode" : "5510", "dName" : "여관업"},{"aCode" : "I", "dCode" : "5510", "dName" : "휴양 콘도 운영업"},{"aCode" : "I", "dCode" : "5510", "dName" : "민박업"},{"aCode" : "I", "dCode" : "5510", "dName" : "기타 일반 및 생활 숙박시설 운영업"},{"aCode" : "J", "dCode" : "2211", "dName" : "일반 서적 출판업"},{"aCode" : "J", "dCode" : "2211", "dName" : "교과서 및 학습 서적 출판업"},{"aCode" : "J", "dCode" : "2211", "dName" : "만화 출판업"},{"aCode" : "J", "dCode" : "2212", "dName" : "잡지 및 정기 간행물 발행업"},{"aCode" : "J", "dCode" : "2212", "dName" : "신문 발행업"},{"aCode" : "K", "dCode" : "6411", "dName" : "중앙은행"},{"aCode" : "K", "dCode" : "6592", "dName" : "국내은행"},{"aCode" : "K", "dCode" : "6592", "dName" : "신용조합"},{"aCode" : "K", "dCode" : "6592", "dName" : "그 외 기타 여신 금융업"},{"aCode" : "K", "dCode" : "6592", "dName" : "그 외 기타 여신 금융업"},{"aCode" : "L", "dCode" : "7011", "dName" : "주거용 건물 임대업"},{"aCode" : "L", "dCode" : "7011", "dName" : "주거용 건물 임대업"},{"aCode" : "L", "dCode" : "7011", "dName" : "주거용 건물 임대업(장기임대공동·단독주택)"},{"aCode" : "L", "dCode" : "7011", "dName" : "주거용 건물 임대업(장기임대다가구주택)"},{"aCode" : "L", "dCode" : "7012", "dName" : "비주거용 건물 임대업(점포, 자기땅)"},{"aCode" : "M", "dCode" : "7300", "dName" : "기타 인문 및 사회과학 연구개발업"},{"aCode" : "M", "dCode" : "7300", "dName" : "물리, 화학 및 생물학 연구개발업"},{"aCode" : "M", "dCode" : "7300", "dName" : "농림수산학 및 수의학 연구개발업"},{"aCode" : "M", "dCode" : "7300", "dName" : "의학 및 약학 연구개발업"},{"aCode" : "M", "dCode" : "7300", "dName" : "기타 자연과학 연구개발업"},{"aCode" : "N", "dCode" : "1432", "dName" : "무형 재산권 임대업"},{"aCode" : "N", "dCode" : "5239", "dName" : "기타 여행 보조 및 예약 서비스업"},{"aCode" : "N", "dCode" : "6303", "dName" : "자동차 임대업(렌트카)"},{"aCode" : "N", "dCode" : "6306", "dName" : "여행사업"},{"aCode" : "N", "dCode" : "6306", "dName" : "기타 여행 보조 및 예약 서비스업"},{"aCode" : "O", "dCode" : "8411", "dName" : "입법기관"},{"aCode" : "O", "dCode" : "8411", "dName" : "중앙 최고 집행기관"},{"aCode" : "O", "dCode" : "8411", "dName" : "지방행정 집행기관"},{"aCode" : "O", "dCode" : "8411", "dName" : "재정 및 경제정책 행정"},{"aCode" : "O", "dCode" : "8411", "dName" : "기타 일반 공공 행정"},{"aCode" : "P", "dCode" : "5510", "dName" : "청소년 수련시설 운영업"},{"aCode" : "P", "dCode" : "7414", "dName" : "직원 훈련기관"},{"aCode" : "P", "dCode" : "8041", "dName" : "외국인학교"},{"aCode" : "P", "dCode" : "8090", "dName" : "운전학원"},{"aCode" : "P", "dCode" : "8090", "dName" : "기타 기술 및 직업 훈련학원"},{"aCode" : "Q", "dCode" : "8511", "dName" : "요양병원"},{"aCode" : "Q", "dCode" : "8511", "dName" : "치과병원"},{"aCode" : "Q", "dCode" : "8511", "dName" : "한방병원"},{"aCode" : "Q", "dCode" : "8511", "dName" : "종합병원"},{"aCode" : "Q", "dCode" : "8511", "dName" : "일반병원"},{"aCode" : "R", "dCode" : "5122", "dName" : "복권 발행 및 판매업"},{"aCode" : "R", "dCode" : "5220", "dName" : "복권 발행 및 판매업"},{"aCode" : "R", "dCode" : "8090", "dName" : "그 외 기타 스포츠시설 운영업"},{"aCode" : "R", "dCode" : "8090", "dName" : "기원 운영업"},{"aCode" : "R", "dCode" : "9214", "dName" : "공연 기획업"},{"aCode" : "S", "dCode" : "7017", "dName" : "화장터 운영, 묘지 분양 및 관리업"},{"aCode" : "S", "dCode" : "7250", "dName" : "컴퓨터 및 주변 기기 수리업"},{"aCode" : "S", "dCode" : "7494", "dName" : "그 외 기타 달리 분류되지 않은 개인 서비스업"},{"aCode" : "S", "dCode" : "9221", "dName" : "그 외 기타 개인 및 가정용품 수리업"},{"aCode" : "S", "dCode" : "9221", "dName" : "가전제품 수리업"},{"aCode" : "T", "dCode" : "9500", "dName" : "가구 내 고용활동"},{"aCode" : "U", "dCode" : "9900", "dName" : "주한 외국 공관"},{"aCode" : "U", "dCode" : "9900", "dName" : "기타 국제 및 외국기관"}]}';

  dynamic jsonItem = json.decode(jsonData);
  List fData  = jsonItem['items'];
  List flData = List.generate(
      0,
          (index) => index
  );

  fData.forEach((element) {
    flData.add(WorkPlaceAddBusinessDcode(element));
  });

  Map<String, String>? bsDdata = {};
  for(int i = 0; i < flData.length; i++)
  {
    if( flData[i].aCode == aCode)
    {
      bsDdata[flData[i].dCode + "-$i"] = flData[i].dName;
    }
  }

  return bsDdata;
}
