<html>
	<head>
	</head>
	<?php
		require 'medoo.php';
		require 'database.php';

		

		if($_POST) {
			
			$q_id = $database->insert("quiz", [
				"user_id" => $_POST['user_id'],
				"name" => $_POST['name'],
				"course_id" => $_POST['course_id'],
				"expires" => date(),
				
			]);
		}

		include ('quiz_list.php');

	?>

	<form action="new_quiz.php" method="POST">
		<input type="text" name="name" placeholder="Quiz Name"/>

		<input type="hidden" name="user_id" value="1">
		<input type="hidden" name="course_id" value="1">
		<input type="submit" value="send"/>
	</form>
</html>