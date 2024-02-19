<?php
    // Include the db connect code
    include('dbconnect.php');

    // prepare the query
    $breaks_stmt = $dbconnect->prepare("SELECT * FROM break");

    // Run the query
    $breaks_stmt->execute();

    // Get the results and enter into a variable
    $breaks_result = $breaks_stmt->get_result();

    // Convert results into an associative array so we can display them
    $breaks = $breaks_result->fetch_all(MYSQLI_ASSOC);

    // Now we can iterate through the breaks array and display each
    // First, we should check if there are any results
    if($breaks_result->num_rows > 0) {
        // If there are results, we use a foreach loop to display
        // Each time we loop, the result is put into the $break variable
        foreach($breaks as $break) {
            $name = $break['name'];
            $description = $break['description'];
            echo "<h1>$name</h1>";
            echo "<p>$description</p>";
        }
    } else {
        // If there are no results, display a message
        echo "No breaks in the database";
    }
?>