<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

    <title>로그인</title>
    
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="/login/fonts/icomoon/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/login/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="/login/css/style.css">


    <script src="/login/js/main.js"></script>

  </head>
  <body>
    
  <div class="content">
  
  <form class="form-horizontal" 
        action="/user/login"
        method="post">
        
    <div class="container">


      <div class="row justify-content-center">

        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3><strong>LOGIN</strong></h3>
                  <p class="mb-4">로그인 하시면 다양하고 특별한 혜택을 이용할 수 있습니다.</p>
                </div>

                


       				 
                  <div class="form-group first">
                    <label for="id">아이디</label>
                    <input type="text" class="form-control" id="id" required="required" name="id" 
       				 value='${c_id_val}'>
                  </div>
                  <div class="form-group last mb-4">
                    <label for="passwd">비밀번호</label>
                    <input type="password" class="form-control" id="passwd" name="passwd" required="required">
                  </div>


        
        <div class="d-flex mb-5 align-items-center">
         <label class="control control--checkbox mb-0">
          <c:choose>
          <c:when test="${c_id =='Y'}">
          	<input type="checkbox" name="c_id" value="Y" checked="checked"> 아이디 저장
          </c:when>
          <c:otherwise>
            <input type="checkbox" name="c_id" value="Y" > 아이디 저장
          </c:otherwise>
          </c:choose>
                      <div class="control__indicator"></div>
                    </label>
                             </div>
                             
                  
                  <input type="submit" value="로그인" class="btn btn-pill btn-block btn-info" style="font-size:16px;">

				<div class ="find" align="center">
					<p>
						<br><a href="/user/idfind" class="btLink btLine">아이디찾기</a>&nbsp; &nbsp;|&nbsp;&nbsp;
						<a href="/user/pwfind" class="btLink btLine">비밀번호 찾기</a>
					</p>
					<p>
					<a href="/user/agree" class="btLink btLine colPur">회원가입</a>
					</p>	
				</div>
				
               
              </div>
            </div>
          </div>
        </div>       
      </div>
       
    </div>
 </form>
  </div>
  </body>
</html>