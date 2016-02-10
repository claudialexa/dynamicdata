<html>
	<head>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

		<!-- Latest compiled and minified JavaScript -->

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

		
    </head>
	
	<?php
		require 'medoo.php';
		require 'database.php';

		// Check connection
        if ($database->connect_error) {
            die("Connection failed: " . $database->connect_error);
            }; 
        //echo "Connected successfully";
        echo "<h6>"."Vote: Connected"."</h6>";
        
        if($_POST) {
			
			$q_id = $database->insert("questions", [
				"q_id" => $_POST['q_id'],
                "question" => $_POST['question'],
                "district_id" => $_POST['district_id'],
			]);
		}

		$questions = $database->select("questions", [
			"q_id",
			"question",
			"district_id"]
		);
		 
    ?>
   
   <body style="background-color:white;" >
   <div class="row">
	<div class="col-sm-6 col-sm-offset-3">
       <div class="panel panel-primary">
            <div class="panel-body">
            <h3>Vote the Game: Create a Question</h3>
	             <form action="new_question.php" method="POST">
	              	<fieldset class="form-group">
			    	<div class="form-group">
						<label for="formGroupExampleInput">Question:</label>
						<input type="text" name="question" placeholder="" class="form-control" id="formGroupExampleInput"/>
						<input type="hidden" name="q_id"/>
						<label for="formGroupExampleInput">District Number:</label>
						<input type="text" name="district_id" placeholder="" class="form-control" id="formGroupExampleInput"/>
					</div>
				        <button type="submit" class="btn btn-primary" value="send"> Submit!</button>
			    	</fieldset>
				</form>
            </div>
          </div>
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Questions:</h3>
            </div>
    
                <div class="panel-body">

                <?php
                	foreach($questions as $question) {
                		echo "<h6>". $question["question"] . " " . "District" . " " . $question["district_id"] . "</h6>";
					}
                ?>  
				</div>
		</div>
	</div>
	</body>    
	</html>