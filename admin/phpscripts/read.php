<?php

	function getAll($tbl, $order) {
		include('connect.php');
		$queryAll = "SELECT * FROM {$tbl} ORDER BY {$order}";
		$runAll = mysqli_query($link, $queryAll);
		if($runAll){
			return $runAll;
		}else{
			$error = "There was a problem accessing this information.";
			return $error;
		}
		mysqli_close($link);
	}

	function getSingle($tbl, $col, $id) {
		include('connect.php');
		$querySingle = "SELECT * FROM {$tbl} WHERE {$col} = {$id}";
		$runSingle = mysqli_query($link, $querySingle);
		if($runSingle){
			return $runSingle;
		}else{
			$error = "There was a problem accessing this information.";
			return $error;
		}
		mysqli_close($link);
	}

	function getRelation($tbl, $tbl2, $tbl3, $col, $col2, $id) {
		include('connect.php');
		$queryRel = "SELECT {$tbl2}.* FROM {$tbl}, {$tbl2}, {$tbl3} WHERE {$tbl}.{$col} = {$id} AND {$tbl}.{$col} = {$tbl3}.{$tbl}_{$col} AND {$tbl3}.{$tbl2}_{$col2} = {$tbl2}.{$col2}";
		$runRel = mysqli_query($link, $queryRel);
		if($runRel){
			return $runRel;
		}else{
			$error = "There was a problem accessing this information.";
			return $error;
		}
		mysqli_close($link);
	}

	function getForeign($tbl, $tbl2, $col, $col2, $col3, $id) {
		include('connect.php');
		$queryFor = "SELECT {$tbl2}.* FROM {$tbl}, {$tbl2} WHERE {$tbl}.{$col} = {$id} AND {$tbl}.{$col3} = {$tbl2}.{$col2}";
		$runFor = mysqli_query($link, $queryFor);
		if($runFor){
			return $runFor;
		}else{
			$error = "There was a problem accessing this information.";
			return $error;
		}
		mysqli_close($link);
	}

	function filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter) {
		include('connect.php');

		$filterQuery = "SELECT * FROM {$tbl}, {$tbl2}, {$tbl3} WHERE {$tbl}.{$col} = {$tbl3}.{$col} AND {$tbl2}.{$col2} = {$tbl3}.{$col2} AND {$tbl2}.{$col3}='{$filter}'";
		//echo $filterQuery;
		$runQuery = mysqli_query($link, $filterQuery);
		if($runQuery){
			return $runQuery;
		}else{
			$error = "There was a problem accessing this information.";
			return $error;
		}
		mysqli_close($link);
	}
?>
