window.addEventListener('DOMContentLoaded', (event) => {
    // Function to populate the values in the table cells
    function populateTable() {
        console.log("populate table function called!!!");
        // Get the table element
        var table = document.getElementById('myTable');

        // Array of data for each row
        var rowData = [
            ['GIF420<br>Goophy', 'Evaluation', 'Poids', 'C1', 'C2', 'C3'],
            ['Examen Sommatif', '  80/120', '  20/40', '  40/50', '  20/30'],
            ['Examen pratique', '  75/100', '  20/20', '  35/50', '  20/30']
            // Add more rows here if needed
        ];

        // Loop through the data and populate the table cells
        for (var i = 0; i < rowData.length; i++) {
            var row = table.insertRow(i);
            for (var j = 0; j < rowData[i].length; j++) {
                var cell = row.insertCell(j);
                if (j === 0 && i === 0) {
                    cell.rowSpan = rowData.length;
                    cell.innerHTML = rowData[i][j];
                } else {
                    cell.innerHTML = rowData[i][j];
                }
            }
        }
    }

    // Call the populateTable function
    populateTable();
});