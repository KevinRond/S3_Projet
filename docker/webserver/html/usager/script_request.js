function requestCours() {
    console.log("function called??????????????");
    const div = document.getElementById('title');
    const span = div.firstElementChild;
    axios.get("http://localhost:8888/api/selectinfo/dalv1001/A22")
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
                        comp1Cell.textContent = cours.comp1;
                        row.appendChild(comp1Cell);

                        const comp2Cell = document.createElement('td');
                        comp2Cell.textContent = cours.comp2;
                        row.appendChild(comp2Cell);

                        const comp3Cell = document.createElement('td');
                        comp3Cell.textContent = cours.comp3;
                        row.appendChild(comp3Cell);

                        const nomCoursCell = document.createElement('td');
                        nomCoursCell.textContent = cours.nomCours;
                        row.appendChild(nomCoursCell);

                        const nomEvaluationCell = document.createElement('td');
                        nomEvaluationCell.textContent = cours.nomEvaluation;
                        row.appendChild(nomEvaluationCell);

                        const ponderationComp1Cell = document.createElement('td');
                        ponderationComp1Cell.textContent = cours.ponderationComp1;
                        row.appendChild(ponderationComp1Cell);

                        const ponderationComp2Cell = document.createElement('td');
                        ponderationComp2Cell.textContent = cours.ponderationComp2;
                        row.appendChild(ponderationComp2Cell);

                        const ponderationComp3Cell = document.createElement('td');
                        ponderationComp3Cell.textContent = cours.ponderationComp3;
                        row.appendChild(ponderationComp3Cell);

                        const sigleCell = document.createElement('td');
                        sigleCell.textContent = cours.sigle;
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
