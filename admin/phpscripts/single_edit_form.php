<?php
  function singleEdit($tbl, $col, $id) {
    $result = getSingle($tbl, $col, $id);
    $getResult = mysqli_fetch_array($result);

    // echo mysqli_num_fields($result);

    if ($tbl === "actor" || $tbl === "director") {
      echo "<h1>{$tbl}: {$getResult['fname']} {$getResult['lname']}</h1>";
    }
    else if ($tbl === "movie") {
      echo "<h1>{$tbl}: &quot;{$getResult['title']}&quot;</h1>";
      echo "<img src=\"../images/{$getResult['cover']}\" alt=\"{$getResult['title']} cover\">";
    }
    else {
      echo "<h1>{$tbl}: {$getResult['name']}</h1>";
    }

    echo "<form action=\"phpscripts/edit.php\" method=\"post\">";

    echo "<input hidden name=\"tbl\" value=\"{$tbl}\">";
    echo "<input hidden name=\"col\" value=\"{$col}\">";
    echo "<input hidden name=\"id\" value=\"{$id}\">";

    for($i = 0; $i < mysqli_num_fields($result); $i++) {
      $dataType = mysqli_fetch_field_direct($result, $i);
      $fieldName = $dataType->name;
      $fieldType = $dataType->type;

      // echo $fieldName."<br>";
      // echo $fieldType."<br><br>";

      if($fieldName != $col) {
        echo "<label>{$fieldName}</label><br>";
        if($fieldType != "252") { //not equal to text
          echo "<input type=\"text\" name=\"{$fieldName}\" value=\"{$getResult[$i]}\"><br><br>";
        }
        else {
          echo "<textarea rows=\"8\" name=\"{$fieldName}\">{$getResult[$i]}</textarea>";
        }
      }
    }
    echo "<input type=\"submit\" name=\"submit\" value=\"Save Content\">";
    echo "</form>";
  }

 ?>
