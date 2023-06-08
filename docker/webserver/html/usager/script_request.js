function requestCours() {
    console.log("function called??????????????");
    const div = document.getElementById('title');
    const span = div.firstElementChild;
    axios.get("http://localhost:8888/api/selectinfo/gerz0501/A22")
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

                    // Create table headers in the desired order
                    const headers = ["Activité", "Nom Évaluation", "C1", "C2", "C3", "Total"];

                    const headerRow = document.createElement('tr');
                    headers.forEach(header => {
                        const th = document.createElement('th');
                        th.textContent = header;
                        headerRow.appendChild(th);
                    });
                    table.appendChild(headerRow);

                    // Create table rows
                    coursArray.forEach((cours, index) => {
                        const row = document.createElement('tr');

                        if (index === 0) {
                            const sigleNomCoursCell = document.createElement('td');
                            sigleNomCoursCell.innerHTML = `<div style="text-align: center;"><strong>${cours.sigle}</strong></div><div style="text-align: center;" class="small">${cours.nomCours}</div>`;
                            sigleNomCoursCell.rowSpan = coursArray.length;
                            row.appendChild(sigleNomCoursCell);
                        }

                        const nomEvaluationCell = document.createElement('td');
                        nomEvaluationCell.textContent = cours.nomEvaluation;
                        row.appendChild(nomEvaluationCell);

                        const comp1Cell = document.createElement('td');
                        const comp1Value = getCoursCellValue(cours.comp1, cours.ponderationComp1);
                        const comp1Div = document.createElement('div');
                        comp1Div.style.display = 'flex';
                        comp1Div.style.justifyContent = 'center'; // Center align the content
                        const comp1ValueSpan = document.createElement('span');
                        comp1ValueSpan.style.fontWeight = 'bold';
                        comp1ValueSpan.textContent = comp1Value.value !== '' ? comp1Value.value : ' ';
                        const comp1PonderationSpan = document.createElement('span');
                        comp1PonderationSpan.textContent = comp1Value.ponderation !== '' ? ` / ${comp1Value.ponderation}` : '';
                        comp1Div.appendChild(comp1ValueSpan);
                        comp1Div.innerHTML += ' ' + comp1PonderationSpan.textContent;
                        comp1Cell.appendChild(comp1Div);
                        row.appendChild(comp1Cell);

                        const comp2Cell = document.createElement('td');
                        const comp2Value = getCoursCellValue(cours.comp2, cours.ponderationComp2);
                        const comp2Div = document.createElement('div');
                        comp2Div.style.display = 'flex';
                        comp2Div.style.justifyContent = 'center'; // Center align the content
                        const comp2ValueSpan = document.createElement('span');
                        comp2ValueSpan.style.fontWeight = 'bold';
                        comp2ValueSpan.textContent = comp2Value.value !== '' ? comp2Value.value : ' ';
                        const comp2PonderationSpan = document.createElement('span');
                        comp2PonderationSpan.textContent = comp2Value.ponderation !== '' ? ` / ${comp2Value.ponderation}` : '';
                        comp2Div.appendChild(comp2ValueSpan);
                        comp2Div.innerHTML += ' ' + comp2PonderationSpan.textContent;
                        comp2Cell.appendChild(comp2Div);
                        row.appendChild(comp2Cell);

                        const comp3Cell = document.createElement('td');
                        const comp3Value = getCoursCellValue(cours.comp3, cours.ponderationComp3);
                        const comp3Div = document.createElement('div');
                        comp3Div.style.display = 'flex';
                        comp3Div.style.justifyContent = 'center'; // Center align the content
                        const comp3ValueSpan = document.createElement('span');
                        comp3ValueSpan.style.fontWeight = 'bold';
                        comp3ValueSpan.textContent = comp3Value.value !== '' ? comp3Value.value : ' ';
                        const comp3PonderationSpan = document.createElement('span');
                        comp3PonderationSpan.textContent = comp3Value.ponderation !== '' ? ` / ${comp3Value.ponderation}` : '';
                        comp3Div.appendChild(comp3ValueSpan);
                        comp3Div.innerHTML += ' ' + comp3PonderationSpan.textContent;
                        comp3Cell.appendChild(comp3Div);
                        row.appendChild(comp3Cell);

                        const totalCell = document.createElement('td');
                        const totalValue = getCoursCellValue(cours.total);
                        const totalDiv = document.createElement('div');
                        totalDiv.style.display = 'flex';
                        totalDiv.style.justifyContent = 'center'; // Center align the content
                        const totalValueSpan = document.createElement('span');
                        totalValueSpan.style.fontWeight = 'bold';
                        totalValueSpan.textContent = totalValue.value !== '' ? totalValue.value : ' ';
                        const totalPonderationSpan = document.createElement('span');
                        totalPonderationSpan.textContent = "%"; // Add the "%" sign
                        totalDiv.appendChild(totalValueSpan);
                        totalDiv.appendChild(totalPonderationSpan);
                        totalCell.appendChild(totalDiv);
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

function getCoursCellValue(value, ponderation) {
    if (value === null || ponderation === null) {
        return { value: '', ponderation: '' }; // Empty cell
    } else {
        const formattedValue = value !== undefined ? value : '';
        const formattedPonderation = ponderation !== undefined ? ponderation : '';
        return { value: formattedValue, ponderation: formattedPonderation };
    }
}
