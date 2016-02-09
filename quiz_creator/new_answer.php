<html>
	<head>
	</head>
	<?php
		require 'medoo.php';
		require 'database.php';

		

		if($_POST) {
			if ($_POST['correct'] == 1) {
				$correct_value = 1;
			}
			else {
				$correct_value = 0;
			}

			$a_id = $database->insert("answers", [
				"question_id" => $_POST['question_id'],
				"answer" => $_POST['answer'],
				"correct" => $correct_value,
				
			]);
		}
		$questions = $database->select("questions", [
						"question",
						"points",
						"quiz_id",
						"id"],
						["id[=]" => 7]
					);

		
		foreach($questions as $question) {
			echo "<h4>".$question["question"] . "</h4>";
		}

		$answers = $database->select("answers", [
						"question_id",
						"answer",
						"correct"],
						["question_id[=]" => 7]);

		foreach($answers as $answer) {
			if ($answer["correct"]) {
			echo "<p><em>" . $answer["answer"] . "</em></p>";

			} else {
			echo "<p>" . $answer["answer"] . "</p>";

			}
		}

	?>

	<form action="new_answer.php" method="POST">
		<input type="text" name="answer" placeholder="Answer"/>
		Correct? <input type="checkbox" value="1" name="correct"/>

		<input type="hidden" name="question_id" value="7">
		<input type="submit" value="send"/>
	</form>
</html>