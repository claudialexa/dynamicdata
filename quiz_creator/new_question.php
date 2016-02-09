<html>
	<head>
	</head>
	<?php
		require 'medoo.php';
		require 'database.php';

		

		if($_POST) {
			$q_id = $database->insert("questions", [
				"quiz_id" => $_POST['quiz_id'],
				"question" => $_POST['question'],
				"points" => $_POST['points'],
				"question_type" => $_POST['question_type']
			]);
		}
		
		$questions = $database->select("questions", [
						"question",
						"points",
						"quiz_id",
						"id"],
						["quiz_id[=]" => 1]
					);

		foreach($questions as $question) {
			echo "<h6>" . $question["question"] . "</h6>";
		}

	?>
	<form action="new_question.php" method="POST">
		<input type="text" name="question" placeholder="Question"/>
		<input type="text" name="points" placeholder="Points"/>

		<input type="hidden" name="quiz_id" value="1">
		<input type="hidden" name="question_type" value="1">
		<input type="submit" value="send"/>
	</form>
</html>