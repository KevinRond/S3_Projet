
// =======================================================================================================
//============= Java script file for the filling of the table of grades ==================================
//============= function to select the semester of a student populating the dropdown ========================
function populateTrimestreDropdown() {
    const cip = user.preferred_username;
    const trimestreSelect = document.getElementById('trimestre');
    axios
        .get('http://localhost:8888/api/selectTrimestre/' + cip + '/')
        .then(function(response) {
            console.log('Response: ', response.status);
            console.log(user);

            const trimestres = response.data;

            // Validate the response data
            if (Array.isArray(trimestres) && trimestres.length > 0) {
                // Filter out duplicate idTrimestre values
                const uniqueTrimestres = [...new Set(trimestres.map(trimestre => trimestre.idTrimestre))];
                console.log(uniqueTrimestres);
                let finaltrimestres = [];

                for (let trimestre of uniqueTrimestres){
                    if (trimestre === "A22"){
                        finaltrimestres[0] = trimestre;
                    }
                    if (trimestre === "H23"){
                        finaltrimestres[1] = trimestre;
                    }
                    if (trimestre === "E23"){
                        finaltrimestres[2] = trimestre;
                    }
                    if (trimestre === "A23"){
                        finaltrimestres[3] = trimestre;
                    }
                    if (trimestre === "H24"){
                        finaltrimestres[4] = trimestre;
                    }
                    // ajouter trimestre au besoin
                }

                console.log(finaltrimestres)
                finaltrimestres.forEach(idTrimestre => {
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
// =========================================================================================================


// ============================================================================================================
// ============= function to populate the table of evaluations for a student adn specific semester ============
function requestCours() {
    console.log("function called??????????????");
    const div = document.getElementById('title');
    const span = div.firstElementChild;

    // clears the page before repopulating
    span.innerHTML = '';
    //Variable créez qui stocke les valeurs de la colonne Total
    let totalValues = []
    let currentTotalValue = null;

    const trimestreSelect = document.getElementById('trimestre');
    const selectedTrimestre = trimestreSelect.options[trimestreSelect.selectedIndex].value;
    console.log(selectedTrimestre)
    const cip = user.preferred_username;
    console.log("cip is : ", cip);
    axios.get("http://localhost:8888/api/selectinfo/" + cip + "/" + selectedTrimestre)
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
                    const headers = ["Activité", "Nom Évaluation", "C1", "C2", "C3", "Résultat"];

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
                            currentTotalValue = cours.noteTotal !== null ? cours.noteTotal.toFixed(2) : '';
                        }

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

                        const resCell = document.createElement('td');
                        const resValue = getCoursCellValue(cours.total);
                        const resValueFormatted = resValue.value !== '' ? resValue.value.toFixed(0) : ''; // Supprimer les chiffres après la virgule
                        const resDiv = document.createElement('div');
                        resDiv.style.display = 'flex';
                        resDiv.style.justifyContent = 'center'; // Centrer le contenu
                        const resValueSpan = document.createElement('span');
                        resValueSpan.style.fontWeight = 'bold';
                        resValueSpan.style.fontSize = '18px'; // Augmenter la taille de la police
                        resValueSpan.textContent = resValueFormatted !== '' ? resValueFormatted : ' ';
                        const resPonderationSpan = document.createElement('span');
                        resPonderationSpan.textContent = "%"; // Ajouter le signe "%"
                        resDiv.appendChild(resValueSpan);
                        resDiv.appendChild(resPonderationSpan);
                        resCell.appendChild(resDiv);
                        row.appendChild(resCell);
                        table.appendChild(row);
                    });

                    if (currentTotalValue !== null) {
                        const totalRow = document.createElement('tr');
                        const totalTitleCell = document.createElement('td');
                        totalTitleCell.style.fontWeight = 'bold';
                        totalTitleCell.textContent = 'Total';
                        totalRow.appendChild(totalTitleCell);

                        const emptyCell = document.createElement('td'); // Cellule vide pour aligner avec l'activité
                        totalRow.appendChild(emptyCell);

                        const emptyCellsCount = headers.length - 3; // Compteur de cellules vides
                        for (let i = 0; i < emptyCellsCount; i++) {
                            const emptyCell = document.createElement('td');
                            totalRow.appendChild(emptyCell);
                        }

                        const resultCell = document.createElement('td');
                        resultCell.style.textAlign = 'center';
                        resultCell.style.fontWeight = 'bold';
                        totalRow.style.fontSize = '22px';
                        const totalValueFormatted = currentTotalValue !== '' ? currentTotalValue.split('.')[0] : ''; // Supprimer les chiffres après la virgule
                        resultCell.textContent = totalValueFormatted !== '' ? totalValueFormatted + '%' : '';
                        totalRow.appendChild(resultCell);

                        table.appendChild(totalRow);
                    }


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
    axios.get("http://localhost:8888/api/selectCoteZTotal/" + cip)
        .then(function (response) {
            const coteZTotal = response.data.CoteZTotal;

            axios.get("http://localhost:8888/api/selectCoteZTrimestre/" + cip + "/" + selectedTrimestre)
                .then(function (response) {
                    const coteZTrimestre = response.data[0].coteZTrimestre;
                    const resultDiv = document.createElement('div');
                    resultDiv.innerHTML = `Cote Z Trimestre: ${coteZTrimestre}`;
                    resultDiv.style.position = 'absolute';
                    resultDiv.style.top = '40px';
                    resultDiv.style.right = '10px';
                    span.appendChild(resultDiv);

                    const totalDiv = document.createElement('div');
                    totalDiv.innerHTML = `Cote Z Total: ${coteZTotal}`;
                    totalDiv.style.position = 'absolute';
                    totalDiv.style.top = '60px'; // Adjust the value to move it down or up
                    totalDiv.style.right = '10px';
                    span.appendChild(totalDiv);
                })
                .catch(function (error) {
                    console.log('Error fetching cote Z trimestre:', error);
                    span.innerHTML = '<br> <strong>' + error.toString() + '</strong> </br>';
                });
        })
        .catch(function (error) {
            console.log('Error fetching cote Z total:', error);
            span.innerHTML = '<br> <strong>' + error.toString() + '</strong> </br>';
        });



}
// ===========================================================================================================

// ===========================================================================================================
// =================== function for grouping the classes of the same name together ============================
function groupByNomCours(coursData) {
    return coursData.reduce((result, cours) => {
        (result[cours.nomCours] = result[cours.nomCours] || []).push(cours);
        return result;
    }, {});
}
// ==========================================================================================================

// ==========================================================================================================
// ======= function to turn the evaluations in average in percentage of the three competences ===============
function getCoursCellValue(value, ponderation) {
    if (value === null || ponderation === null) {
        return { value: '', ponderation: '' }; // Empty cell
    } else {
        const formattedValue = value !== undefined ? value : '';
        const formattedPonderation = ponderation !== undefined ? ponderation : '';
        return { value: formattedValue, ponderation: formattedPonderation };
    }
}
// =================================================================================================================



var keycloak;
let user;

// ===========================================================================================================
// ================== rest of the file in relation to the keycloak login 0_0 =================================
function initializeKeycloak() {
    return new Promise((resolve, reject) => {
        keycloak = new Keycloak({
            "realm": "usager",
            "auth-server-url": "http://localhost:8180/",
            "ssl-required": "external",
            "clientId": "frontend",
            "public-client": true,
            "confidential-port": 0
        });

        keycloak.init({ onLoad: 'login-required' }).then((authenticated) => {
            if (authenticated) {
                const user = keycloak.tokenParsed;
                console.log("User authenticated:", user);
                resolve(user); // Resolve the promise with the user
            } else {
                reject(new Error('User not authenticated'));
            }
        }).catch((error) => {
            reject(error);
        });
    });
}

function initKeycloak() {
    initializeKeycloak().then((resolvedUser) => {
        user = resolvedUser;
        console.log("Initialization complete");
        populateTrimestreDropdown();
    }).catch((error) => {
        console.error("Failed to initialize Keycloak:", error);
    });
}

function requestStudent() {
    const div = document.getElementById('title');
    const span = div.firstElementChild;
    axios.get("http://localhost:8888/api/student", {
        headers: {
            'Authorization': 'Bearer ' + keycloak.token
        }
    })
        .then(function (response) {
            console.log("Response: ", response.status);
            span.innerHTML = '<br> <strong>' + response.data.cip + '</strong> </br>' +
                '<br> <strong>' + response.data.last_name + '</strong> </br>' +
                '<br> <strong>' + response.data.first_name + '</strong> </br>' +
                '<br> <strong>' + response.data.email + '</strong> </br>' +
                '<br> <strong>' + response.data.roles + '</strong> </br>'
        })
        .catch(function (error) {
            console.log('refreshing');
            keycloak.updateToken(5).then(function () {
                console.log('Token refreshed');
            }).catch(function () {
                console.log('Failed to refresh token');
            })
        });
    span.innerHTML = '<br> <strong>' + "Vous n\'avez pas le rôle d\'étudiant" + '</strong> </br>'
}

function requestTeacher() {
    const div = document.getElementById('title');
    const span = div.firstElementChild;
    axios.get("http://localhost:8888/api/teacher", {
        headers: {
            'Authorization': 'Bearer ' + keycloak.token
        }
    })
        .then(function (response) {
            console.log("Response: ", response.status);
            span.innerHTML = '<br> <strong>' + response.data.cip + '</strong> </br>' +
                '<br> <strong>' + response.data.last_name + '</strong> </br>' +
                '<br> <strong>' + response.data.first_name + '</strong> </br>' +
                '<br> <strong>' + response.data.email + '</strong> </br>' +
                '<br> <strong>' + response.data.roles + '</strong> </br>'
        })
        .catch(function (error) {
            console.log('refreshing');
            keycloak.updateToken(5).then(function () {
                console.log('Token refreshed');
            }).catch(function () {
                console.log('Failed to refresh token');
            })
        });
    span.innerHTML = '<br> <strong>' + "Vous n\'avez pas le rôle d\'enseignant" + '</strong> </br>'
}

function logout() {
    // let logoutURL = "http://localhost:8080//realms/usager/protocol/openid-connect/logout"
    // window.location.href = logoutURL;
}