<?php
		$quizzes = $database->select("quiz", [
						"name",
						"user_id",
						"course_id",
						"id"],
						["user_id[=]" => 1]
					);

		
		foreach($quizzes as $quiz) {
			echo "<h4>".$quiz["name"] . "</h4>";
		}
