Team Project

<br>

# [🚗 EV RENT CAR](https://github.com/ISOSIM/Rent-Car-electtronic)

## Electric Vehicle Rent Car Service

<br>

<img src="https://github.com/yuseons/RentCar/blob/master/image/rentcar.png">

> 기존 전기 렌트카의 부족한 요소를 개선하여 렌트서비스부터 충전소 안내 서비스까지 한번에 제공합니다.

## 🚕 프로젝트의 목적

<br>

\- 기존 렌터카 서비스의 문제점 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\- 기존 서비스의 충전소 및 편의시설 위치 제공서비스 부재
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\- 미흡한 서포트 서비스 <br><br>
\- EV Rent 서비스로 문제 해결 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\- 충전소 및 편의시설 위치 서비스 제공 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\- 이동 충전 지원 및 수리 서비스 기능 추가 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\- 라이선스 등록 및 인증 기능을 추가한 회원가입 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\- Kakao Map & GeoLocation 을 이용한 지도 기능 확대

<br>

🌟 라이선스 유효성 검사 및 관리를 통한 믿을 수 있는 렌트 서비스

- OCR 기능을 적용한 빠른 면허증 유효성 검사
- 기업과 사용자가 서로 믿을 수 있는 계약

<br>

🌟 사용자의 고민을 해결한 서비스

- 방전, 차량 사고 등의 처리를 위한 빠른 서포트 서비스 제공

<br>

🌟위치 기반 정보 제공으로 더욱 정확한 정보 획득

- 하버사인 알고리즘 적용으로 정확한 위치의 충전/편의 시설 정보 획득
- GeoLocation / Kakao Map API 를 혼합한 직관적인 위치 정보 획득

<br>

### ⏰ 개발 기간

2022.06.29 ~ 2022.08.18

<br>

### ⚙️ 개발 환경

통합개발환경 : IntelliJ <br>
JDK 버전 : JDK 11 <br>
데이터 베이스 : MySQL <br>
빌드 툴 : Gradle <br><br>

### ⚒️ Tools

<img src="https://github.com/yuseons/RentCar/blob/master/image/tool.jpg">

## 📌 DB

<img src="https://github.com/yuseons/RentCar/blob/master/image/db1.jpg">
<img src="https://github.com/yuseons/RentCar/blob/master/image/db2.png">

## 📌 기능

<img src="https://github.com/yuseons/RentCar/blob/master/image/User Interface.jpg">
<img src="https://github.com/yuseons/RentCar/blob/master/image/1.jpg">
<img src="https://github.com/yuseons/RentCar/blob/master/image/2.jpg">

## 📌 핵심 기능

### 1. OCR을 활용한 운전면허증 유효성 검사

- 운전면허증을 소지해야만 회원가입 가능
  - 라이선스의 사전 체크로 유저 신뢰성 향상
  - 사고 및 범죄 발생시 운전자 라이선스 정보로 조회가능
- 운전면허증의 운전면허번호와 주민등록번호를 OCR로 추출한 후 운전면허증 유효성 검사 실시

<img src="https://github.com/yuseons/RentCar/blob/master/image/ocr.png">

<img src="https://github.com/yuseons/RentCar/blob/master/image/ocr2.png">

<img src="https://github.com/yuseons/RentCar/blob/master/image/ocr3.png">

### 2. Object Storage API 사용

- Object Storage

  - 인터넷상에 여러 사용자가 원하는 데이터를 저장하고 공유할 수 있도록 오브젝트 형태로 저장되는 스토리지
  - 대용량 저장소로 사용하며, 중요한 데이터를 백업 및 장기 보관할 수 있도록 구성

- 파일 관리가 필요한 기능은 API를 연결

  - 파일 삭제, 수정, 등록 사용
  - Mysql 에 저장된 Path / Key 값으로 파일 관리

- 서버 용량 및 부하 걱정을 안해도 됩니다.
- 파일을 관리하는 로직도 어렵게 구현할 필요가 없습니다.

<img src="https://github.com/yuseons/RentCar/blob/master/image/ObjectStorage.png">

<img src="https://github.com/yuseons/RentCar/blob/master/image/ObjectStorage2.png">

### 3. SummerNote 사용

- CK Editer 대신 SummerNote 사용

  - CK Editer의 복잡한 설치와 제한된 사용 기간
  - 서머노트의 편리한 이미지 처리

- SummerNote의 편리한 이미지 핸들링

<img src="https://github.com/yuseons/RentCar/blob/master/image/summernote.png">

### 4. 접근 권한

- admin(관리자)이 아닌 사용자가 admin 페이지로 접근 할 경우 error 페이지/로그인 창으로 이동

<img src="https://github.com/yuseons/RentCar/blob/master/image/admin.png">

### 5. GeoLocation API , Kakao Map API 사용

- 전기차 충전소 위치 제공
- 차량 렌트/반납 위치 제공

<img src="https://github.com/yuseons/RentCar/blob/master/image/map.png">

- 도움 요청 기능
  - 차량 방전 등 도움이 필요할 경우 도움을 요청할 수 있습니다.

<img src="https://github.com/yuseons/RentCar/blob/master/image/support.png">

### 6. 거리 알고리즘 적용

- 운전자의 위치를 고려한 정보만 제공
- 거리 알고리즘을 적용하고 데이터를 병렬 처리하여
  서버에 부하를 해결

<br>

- 최적의 위치 정보 획득을 위한 Haversine 알고리즘

<img src="https://github.com/yuseons/RentCar/blob/master/image/Haversine.png">

<img src="https://github.com/yuseons/RentCar/blob/master/image/Haversine2.png">

- 병렬 처리를 통한 데이터 처리 개선

<img src="https://github.com/yuseons/RentCar/blob/master/image/Haversine3.png">
