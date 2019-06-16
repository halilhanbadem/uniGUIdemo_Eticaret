<?php

	if (isset($_POST['smskod'])) {
		if ($_POST['smskod'] == "1903") {
			header("Location: islem_basarili.php?tokenURL=" . $_POST['tokenURL'] . "&callbacktarget=" . $_POST['callbacktarget']);
		} else 
		{
			header("Location: islem_basarisiz.php?tokenURL=" . $_POST['tokenURL'] . "&callbacktarget=" . $_POST['callbacktarget']);
		}
	}

?>