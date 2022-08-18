<!--<%@ page contentType="text/html; charset=UTF-8" %>-->
<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->
<!--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>-->
<!--<%@ taglib prefix="util" uri="/ELFunctions" %>-->

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Car Update</title>
  <meta charset="utf-8">

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

  <header>CarOption</header>
    <form class="form-horizontal"
    action="/carinfo/optupdate"
    method="post"
    id="opt">

<input type="hidden" class="form-control" id="carnumber" name="carnumber" value="${carnumber}">

    <div class="form first">
      <div class="carpotion">
        <span class="title">Car Option</span>
          <div class="fields" id="option">

            <div class="input-field">
              <label>bluetooth</label>
              <input type="checkbox" name="bluetooth" class="cm-toggle" value="블루투스" >
            </div>
            <div class="input-field">
              <label>rear_sensor</label>
              <input type="checkbox" name="rear_sensor" class="cm-toggle" value="후방센서" >
            </div>
            <div class="input-field">
              <label>rear_camera</label>
              <input type="checkbox" name="rear_camera" class="cm-toggle" value="후방카메라" >
            </div>
            <div class="input-field">
              <label>black_box</label>
              <input type="checkbox" name="black_box" class="cm-toggle" value="블랙박스" >
            </div>
            <div class="input-field">
              <label>heated_seat</label>
              <input type="checkbox" name="heated_seat" class="cm-toggle" value="열선시트" >
            </div>
            <div class="input-field">
              <label>heated_handle</label>
              <input type="checkbox" name="heated_handle" class="cm-toggle" value="열선핸들" >
            </div>
            <div class="input-field">
              <label>ventilated_seat</label>
              <input type="checkbox" name="ventilated_seat" class="cm-toggle" value="통풍시트" >
            </div>
            <div class="input-field">
              <label>navigation</label>
              <input type="checkbox" name="navigation" class="cm-toggle" value="네비게이션" >
            </div>
            <div class="input-field">
              <label>non_smoking_vehicle</label>
              <input type="checkbox" name="non_smoking_vehicle" class="cm-toggle" value="금연차량" >
            </div>
            <div class="input-field">
              <label>smart_key</label>
              <input type="checkbox" name="smart_key" class="cm-toggle" value="스마트키" >
            </div>
            <div class="input-field">
              <label>sunroof</label>
              <input type="checkbox" name="sunroof" class="cm-toggle" value="썬루프" >
            </div>
            <div class="input-field">
              <label>rear_warning_light</label>
              <input type="checkbox" name="rear_warning_light" class="cm-toggle" value="후방경고등" >
            </div>
            <div class="input-field">
              <label>lane_departure_prevention</label>
              <input type="checkbox" name="lane_departure_prevention" class="cm-toggle" value="차선방지이탈" >
            </div>
          </div>

          <div class="buttons">
           <button type="submit" id="closebtn" class="btn">Option 수정</button>
          </div>

        </div>
      </div>
    </form>
  </div>
</body>
<script>


  $(function() {

$("#closebtn").click( function() {
     setTimeout(function() {
         window.close();
         window.opener.location.reload();
      }, 10);
  });


});

</script>
</html>