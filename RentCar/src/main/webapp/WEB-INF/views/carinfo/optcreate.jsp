<!--<%@ page contentType="text/html; charset=UTF-8" %>-->
<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->
<!--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>-->
<!--<%@ taglib prefix="util" uri="/ELFunctions" %>-->

<!DOCTYPE html>
<html lang="en">

<head>
  <title>자동차등록</title>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <script src="https://code.jquery.com/jquery-latest.min.js"></script>

  <link rel="stylesheet" type="text/css" href="/css/support/create.css">
  <link rel="stylesheet" type="text/css" href="/css/support/style.css">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>

<body>
  <div class="container">
    <header>Registration</header>
    <form
    action="/carinfo/optcreate"
    method="post"
    id="optcreate">

      <div class="form first">

        <div class="carpotion">
          <span class="title">Car Option</span>

          <div class="fields" id="option">

            <div class="input-field">
              <label for="carnumber">Car Number</label>
              <input type="text" name="carnumber" placeholder="Enter Car Number" required>
            </div>

            <div class="input-field">
              <label>bluetooth</label>
              <input type="checkbox" name="bluetooth" id="bluetooth" class="cm-toggle" value="블루투스">
            </div>
            <div class="input-field">
              <label>rear_sensor</label>
              <input type="checkbox" name="rear_sensor" id="rear_sensor" class="cm-toggle" value="후방센서">
            </div>
            <div class="input-field">
              <label>rear_camera</label>
              <input type="checkbox" name="rear_camera" id="rear_camera" class="cm-toggle" value="후방카메라">
            </div>
            <div class="input-field">
              <label>black_box</label>
              <input type="checkbox" name="black_box" id="black_box" class="cm-toggle" value="블랙박스">
            </div>
            <div class="input-field">
              <label>heated_seat</label>
              <input type="checkbox" name="heated_seat" id="heated_seat" class="cm-toggle" value="열선시트">
            </div>
            <div class="input-field">
              <label>heated_handle</label>
              <input type="checkbox" name="heated_handle" id="heated_handle" class="cm-toggle" value="열선핸들">
            </div>
            <div class="input-field">
              <label>ventilated_seat</label>
              <input type="checkbox" name="ventilated_seat" id="ventilated_seat" class="cm-toggle" value="통풍시트">
            </div>
            <div class="input-field">
              <label>navigation</label>
              <input type="checkbox" name="navigation" id="navigation" class="cm-toggle" value="네비게이션">
            </div>
            <div class="input-field">
              <label>non_smoking_vehicle</label>
              <input type="checkbox" name="non_smoking_vehicle" id="non_smoking_vehicle" class="cm-toggle" value="금연차량">
            </div>
            <div class="input-field">
              <label>smart_key</label>
              <input type="checkbox" name="smart_key" id="smart_key" class="cm-toggle" value="스마트키">
            </div>
            <div class="input-field">
              <label>sunroof</label>
              <input type="checkbox" name="sunroof" id="sunroof" class="cm-toggle" value="썬루프">
            </div>
            <div class="input-field">
              <label>rear_warning_light</label>
              <input type="checkbox" name="rear_warning_light" id="rear_warning_light" class="cm-toggle" value="후방경고등">
            </div>
            <div class="input-field">
              <label>lane_departure_prevention</label>
              <input type="checkbox" name="lane_departure_prevention" class="cm-toggle" value="차선방지이탈">
            </div>
          </div>
          <div class="buttons">
            <button class="btn" type="submit" id="closebtn">등록</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</body>
<script>
//   $("#closebtn").click(function () {

// var data = {
// 		"carnumber" : carnumber,
// 		"bluetooth" : bluetooth,
// 		"rear_sensor" : rear_sensor,
// 		"rear_camera" : rear_camera,
// 		"black_box" : black_box,
// 		"heated_seat" : heated_seat,
// 		"heated_handle" : heated_handle,
// 		"navigation" : navigation,
// 		"ventilated_seat" : ventilated_seat,
// 		"non_smoking_vehicl" : non_smoking_vehicl,
// 		"smart_key" : smart_key,
// 		"sunroof" : sunroof,
// 		"rear_warning_light" : rear_warning_light,
// 		"lane_departure_prevention" : lane_departure_prevention
// 	}
// $.ajax({
//         type : "post",
// 	    url : "/carinfo/optcreate",
// 	    data : JSON.stringify(data),
// 	    //data: data,
// 	    // dataType:"json",
// 	    contentType: "application/json",
// 	}).then((res) => {
//         if(res == "true"){
//           alert("등록했습니다.");
//           window.close();
//         }
//       })
//       .catch(() => {
//                       alert("잠시후 다시 시도해 보세요.");
//                       window.close();
//                   });;
//     });

$(function() {

$("#closebtn").click( function() {
     $('#optcreate').submit();
     setTimeout(function() {   
         window.close();
         window.opener.location.reload();
      }, 100);
  });

});


</script>

</html>