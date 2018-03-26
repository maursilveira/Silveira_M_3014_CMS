<?php
  function singleEdit($tbl, $col, $id) {
    $result = getSingle($tbl, $col, $id);
    $getResult = mysqli_fetch_array($result);

    if ($tbl === "actor" || $tbl === "director") {
      echo "<h1>{$tbl}: {$getResult['fname']} {$getResult['lname']}</h1>";
      $optionTbl = "movie";
      $options = getAll($optionTbl, "title");
      $selections = getRelation($tbl, $optionTbl, $optionTbl."_".$tbl, "id", "id", $id);
      $selected = array();

      while ($sel = mysqli_fetch_assoc($selections)) {
        $selected[] = $sel['id'];
      }
    }
    else if ($tbl === "movie") {
      echo "<h1>{$tbl}: &quot;{$getResult['title']}&quot;</h1>";
      echo "<img src=\"../images/{$getResult['cover']}\" alt=\"{$getResult['title']} cover\">";
      $optionTbl = "genre";
      $options = getAll($optionTbl, "name");
      $selections = getRelation($tbl, $optionTbl, "movie_genre", "id", "id", $id);
      $selected = array();

      while ($sel = mysqli_fetch_assoc($selections)) {
        $selected[] = $sel['id'];
      }
    }
    else {
      echo "<h1>{$tbl}: {$getResult['name']}</h1>";
    }

    echo "<form action=\"phpscripts/edit.php\" method=\"post\">";

    echo "<input hidden name=\"tbl\" value=\"{$tbl}\">";
    echo "<input hidden name=\"col\" value=\"{$col}\">";
    echo "<input hidden name=\"id\" value=\"{$id}\">";
    echo "<input hidden name=\"relTbl\" value=\"{$optionTbl}\">";

    for($i = 0; $i < mysqli_num_fields($result); $i++) {
      $dataType = mysqli_fetch_field_direct($result, $i);
      $fieldName = $dataType->name;
      $fieldType = $dataType->type;

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
    if($options) {
      echo "<fieldset class=\"form-options\">";
      echo "<legend>{$optionTbl}s:</legend>";

      echo "<div>";
      while($option = mysqli_fetch_array($options)) {
        $checked = "";
        if(in_array($option['id'], $selected)) {
          $checked = "checked";
        }
        echo "<input type=\"checkbox\" name=\"option[]\" value=\"{$option['id']}\" {$checked}>{$option[1]}<br>";
      }
      echo "</div>";
      echo "</fieldset>";
    }
    echo "<input type=\"submit\" name=\"submit\" value=\"Save Content\">";
    echo "</form>";
  }

 ?>
