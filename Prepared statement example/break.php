<!-- This page demonstrates how to run a dynamic query using
prepared statements, displaying one result.

It receives the ID of the break the user selected on the breaks
page, binds this to a prepared statement, before running the
query. The result is then displayed on the page.
-->

<?php
    // Include the db connect code
    include('dbconnect.php');

    // Get the breakID from the $_GET array
    $breakID = $_GET['breakID'];

    // Prepare the statement
    $break_stmt = $dbconnect->prepare("SELECT * FROM break WHERE breakID = ?");
    // Bind the $breakID value into the query
    // Notice that bind_param() also shows what data type is being bound
    // In this case it is an integer, so "i"
    // If it was a string, it would be "s"
    $break_stmt->bind_param("i", $breakID);

    // Run the query
    $break_stmt->execute();

    // Get the results and put into an associative array
    // This is so we can easily get the information from the array
    $result = $break_stmt->get_result();
    $break_details = $result->fetch_assoc();

    // Check if there are results first
    if ($result->num_rows >0) {
        // Put content into variables so we can more easily display it
        $name = $break_details['name'];
        $description = $break_details['description'];

        // Display details
        echo "<h1>$name</h1>";
        echo "<p>$description</p>";
    } else {
        echo "<p>No information available about this break";
    }
?>