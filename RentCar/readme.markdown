<br>
<br>
<br>

<div align="center">

# 🚗 EV RENT CAR 🚗

## Electric Vehicle Rent Car Service

<br>
<br>
<br>

## INTRO

    기존 전기 렌트카의 부족한 요소를 개선하여 렌트서비스부터 충전소 안내 서비스까지 한번에 제공합니다.

<br>
<br>
<br>

# 💊 Tools

<div align="center">

## 🍃 Language & FrameWork

![s](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![s](https://img.shields.io/badge/SPRINGBOOT-6DB33F?style=for-the-badge&logo=SPRINGBOOT&logoColor=white)
![s](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white)
![s](https://img.shields.io/badge/Mysql-4479A1?style=for-the-badge&logo=Mysql&logoColor=white)

## 🍃 Web

![HTML](https://img.shields.io/badge/HTML-E34F26.svg?style=for-the-badge&logo=HTML5&logoColor=white)
![CSS](https://img.shields.io/badge/CSS-1572B6.svg?style=for-the-badge&logo=CSS3&logoColor=white)

## 🍃 Infra

![Docker](https://img.shields.io/badge/docker-2496ED.svg?style=for-the-badge&logo=docker&logoColor=white)
![Jenkins](https://img.shields.io/badge/jenkins-D24939.svg?style=for-the-badge&logo=jenkins&logoColor=white)
![AWS](https://img.shields.io/badge/NAVER-03C75A.svg?style=for-the-badge&logo=Naver&logoColor=white)
![Nginx](https://img.shields.io/badge/NginX-009639.svg?style=for-the-badge&logo=NginX&logoColor=white)

</div>
<br>
<br>
<br>

# Deploy road map
![](https://user-images.githubusercontent.com/65659478/182021200-4d9b4fda-ba85-4b6a-810d-fd4d086c0f61.png)



# 💊 Reference

<div align="center">

<img src="https://blog.kakaocdn.net/dn/EKIAk/btroaNkDBsZ/81pirx8L2TAnnUOUmfeEK1/img.png">

</div>

# API List

## 🐋 Login

### 🦐 Controller
|🍔|method|Request|Response|
|:---:|:---:|:---:|:---:|
|login|/user/login|||
|log out|/user/logout|||
|agreement|/user/agree|||
|ID check|/user/idcheck|||
|Email check|/user/emailcheck|||
|find id|/user/idfind||
| Check ID Alert |/user/idfindex||
|user create|||

### 🦐 RestController
|🍕|method|Request|Response
|:---:|:---:|:---:|:---:|
|Car update|/user/createForm|||
|Car create|/user/create|||

## 🐋 Car Info

### 🦐 Controller
|🍕|method|Request|Response|
|:---:|:---:|:---:|:---:|
|Car update|/carinfo/update/{carnumber}|||
|Car read|/carinfo/read/{carnumber}|||
|Car create|/carinfo/create|||
|Car list|/carinfo/list|||

### 🦐 RestController
|🍕|method|Request|Response
|:---:|:---:|:---:|:---:|
|Car update|/carinfo/update|||
|Car create|/carinfo/create|||


## 🐋 KAKAO API

### 🦐 Controller
|🍟|method|Request|Response|
|:---:|:---:|:---:|:---:|
|help request|/kakao_url/{lat}/{lng}|```/kakao_url/37.769976567342/126.693326928942||
|Car read|/map/map|||

### 🦐 RestController

## 🐋 Supporter API

### 🦐 Controller
|🍟|method|Request|Response|
|:---:|:---:|:---:|:---:|
|help request|/request|||
|Car read|/surpport/read|||
|Supporter info|/surpport/read|||
|Supporter list|/surpport/list|||

### 🦐 RestController
|🍕|method|Request|Response
|:---:|:---:|:---:|:---:|
|Supporter create|/surpport/create|||
|Supporter update|/surpport/update|||