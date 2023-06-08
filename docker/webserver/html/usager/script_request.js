
function requestCours() {

    console.log("function called??????????????");
    const div = document.getElementById('title');
    const span = div.firstElementChild;
    axios.get("http://localhost:8888/api/selectinfo/dalv1001/A22")
        .then(function (response) {
            console.log("Response: ", response.status);
            const etudiantsTrimestre = response.data;

            // Create a table element
            const table = document.createElement('table');

            // Create table headers
            const headers = Object.keys(etudiantsTrimestre[0]);
            const headerRow = document.createElement('tr');
            headers.forEach(header => {
                const th = document.createElement('th');
                th.textContent = header;
                headerRow.appendChild(th);
            });
            table.appendChild(headerRow);

            // Create table rows
            etudiantsTrimestre.forEach(etudiant => {
                const row = document.createElement('tr');
                Object.values(etudiant).forEach(value => {
                    const cell = document.createElement('td');
                    cell.textContent = value;
                    row.appendChild(cell);
                });
                table.appendChild(row);
            });

            // Clear the previous content and append the table to the span element
            span.innerHTML = '';
            span.appendChild(table);
        })
        .catch(function (error) {
            console.log('Error fetching data:', error);
            span.innerHTML = '<br> <strong>' + error.toString() + '</strong> </br>';
        });
}
