function populateTrimestreDropdown() {
    const trimestreSelect = document.getElementById('trimestre');
    axios
        .get('http://localhost:8888/api/selectTrimestre/gerz0501/')
        .then(function(response) {
            console.log('Response: ', response.status);
            const trimestres = response.data;

            // Validate the response data
            if (Array.isArray(trimestres) && trimestres.length > 0) {
                // Filter out duplicate idTrimestre values
                const uniqueTrimestres = [...new Set(trimestres.map(trimestre => trimestre.idTrimestre))];

                uniqueTrimestres.forEach(idTrimestre => {
                    const option = document.createElement('option');
                    option.value = idTrimestre;
                    option.textContent = idTrimestre;
                    trimestreSelect.appendChild(option);
                });

                // Add event listener to trigger the requestCours function when the dropdown changes
                trimestreSelect.addEventListener('change', requestCours);

                // Trigger the initial requestCours function
                requestCours();
            } else {
                // Handle empty or invalid data
                trimestreSelect.innerHTML = '<option value="">No trimestres available</option>';
            }
        })
        .catch(function(error) {
            console.log('Error fetching trimestres:', error);
            trimestreSelect.innerHTML = '<option value="">Error fetching trimestres</option>';
        });
}



// The rest of your requestCours function and other helper functions can remain the same
// ...


function requestCours() {
    console.log("function called??????????????");
    const div = document.getElementById('title');
    const span = div.firstElementChild;

    // clears the page before repopulating
    span.innerHTML = '';

    const trimestreSelect = document.getElementById('trimestre');
    trimestreSelect.addEventListener('change', requestCours);
    const selectedTrimestre = trimestreSelect.value;
    console.log(selectedTrimestre);
    axios.get(`http://localhost:8888/api/selectinfo/gerz0501/${selectedTrimestre}`)
        .then(function (response) {
            console.log("Response: ", response.status);
            const coursData = response.data;

            // Validate the response data
            if (Array.isArray(coursData) && coursData.length > 0) {
                // Group the data by nomCours
                const groupedData = groupByNomCours(coursData);

                // Create a table for each unique nomCours
                Object.entries(groupedData).forEach(([nomCours, coursArray]) => {
                    // Create a table element
                    const table = document.createElement('table');
                    // Create table headers
                    const headers = Object.keys(coursArray[0]);
                    const headerRow = document.createElement('tr');
                    headers.forEach(header => {
                        const th = document.createElement('th');
                        th.textContent = header;
                        headerRow.appendChild(th);
                    });
                    table.appendChild(headerRow);

                    // Create table rows
                    coursArray.forEach(cours => {
                        const row = document.createElement('tr');

                        const comp1Cell = document.createElement('td');
                        comp1Cell.textContent = cours.sigle;
                        row.appendChild(comp1Cell);

                        const comp2Cell = document.createElement('td');
                        comp2Cell.textContent = cours.nomCours;
                        row.appendChild(comp2Cell);

                        const comp3Cell = document.createElement('td');
                        comp3Cell.textContent = cours.nomEvaluation;
                        row.appendChild(comp3Cell);

                        const nomCoursCell = document.createElement('td');
                        nomCoursCell.textContent = cours.comp1;
                        row.appendChild(nomCoursCell);

                        const nomEvaluationCell = document.createElement('td');
                        nomEvaluationCell.textContent = cours.ponderationComp1;
                        row.appendChild(nomEvaluationCell);

                        const ponderationComp1Cell = document.createElement('td');
                        ponderationComp1Cell.textContent = cours.comp2;
                        row.appendChild(ponderationComp1Cell);

                        const ponderationComp2Cell = document.createElement('td');
                        ponderationComp2Cell.textContent = cours.ponderationComp2;
                        row.appendChild(ponderationComp2Cell);

                        const ponderationComp3Cell = document.createElement('td');
                        ponderationComp3Cell.textContent = cours.comp3;
                        row.appendChild(ponderationComp3Cell);

                        const sigleCell = document.createElement('td');
                        sigleCell.textContent = cours.ponderationComp3;
                        row.appendChild(sigleCell);

                        const totalCell = document.createElement('td');
                        totalCell.textContent = cours.total;
                        row.appendChild(totalCell);

                        table.appendChild(row);
                    });

                    // Append the table to the span element
                    span.appendChild(table);
                });
            } else {
                // Handle empty or invalid data
                span.innerHTML = 'No data available.';
            }
        })
        .catch(function (error) {
            console.log('Error fetching data:', error);
            span.innerHTML = '<br> <strong>' + error.toString() + '</strong> </br>';
        });
}

function groupByNomCours(coursData) {
    return coursData.reduce((result, cours) => {
        (result[cours.nomCours] = result[cours.nomCours] || []).push(cours);
        return result;
    }, {});
}
