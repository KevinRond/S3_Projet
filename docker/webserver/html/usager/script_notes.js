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
    let currentTotalValue = null;
    let coteZLettre = null;
    let coteZChiffre = null;
    let totalComp1 = null;
    let totalComp2 = null;
    let totalComp3 = null;
    let totalComp1Pond = null;
    let totalComp2Pond = null;
    let totalComp3Pond = null;
    let moycomp1total = null;
    let moycomp2total = null;
    let moycomp3total = null;
    let moynotetotal = null;
    let ecartcomp1total = null;
    let ecartcomp2total = null;
    let ecartcomp3total = null;
    let ecartnotetotal = null;
    let notePondtotal = null;
    let pondcours = null;




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
                    const updatePopupPosition = (cell, box) => {
                        const rect = cell.getBoundingClientRect();
                        box.style.top = `${rect.top}px`;
                        box.style.left = `${rect.right}px`;
                    };

                    coursArray.forEach((cours, index) => {
                        const row = document.createElement('tr');



                        if (index === 0) {
                            currentTotalValue = cours.noteTotal !== undefined ? (cours.noteTotal).toFixed(0) : '';
                            coteZLettre = cours.coteZLettre !== null ? cours.coteZLettre : '';
                            coteZChiffre = cours.coteZChiffre !== null && cours.coteZChiffre !== undefined ? cours.coteZChiffre.toFixed(1) : '';
                            totalComp1 = cours.TotalNotesComp1 !== null && cours.TotalNotesComp1 !== undefined ? cours.TotalNotesComp1.toFixed(0) : '';
                            totalComp1Pond = cours.TotalPonderationComp1 !== null && cours.TotalPonderationComp1 !== undefined ? cours.TotalPonderationComp1.toFixed(0) : '';
                            totalComp2 = cours.TotalNotesComp2 !== null && cours.TotalNotesComp2 !== undefined ? cours.TotalNotesComp2.toFixed(0) : '';
                            totalComp2Pond = cours.TotalPonderationComp2 !== null && cours.TotalPonderationComp2 !== undefined ? cours.TotalPonderationComp2.toFixed(0) : '';
                            totalComp3 = cours.TotalNotesComp3 !== null && cours.TotalNotesComp3 !== undefined ? cours.TotalNotesComp3.toFixed(0) : '';
                            totalComp3Pond = cours.TotalPonderationComp3 !== null && cours.TotalPonderationComp3 !== undefined ? cours.TotalPonderationComp3.toFixed(0) : '';
                            moycomp1total = cours.moycomp1total;
                            moycomp2total = cours.moycomp2total;
                            moycomp3total = cours.moycomp3total;
                            moynotetotal = cours.moynotetotal;
                            ecartcomp1total = cours.ecartcomp1total;
                            ecartcomp2total = cours.ecartcomp2total;
                            ecartcomp3total = cours.ecartcomp3total;
                            ecartnotetotal = cours.ecartnotetotal;
                            notePondtotal = cours.notePondtotal;
                            pondcours = cours.pondcours;
                        }

                        if (index === 0) {
                            const sigleNomCoursCell = document.createElement('td');

                            sigleNomCoursCell.innerHTML = `
                            <div style="text-align: center;">
                                <strong>
                                    <a href="page_graph.html?sigle=${cours.sigle}&cip=${cip}&selectedTrimestre=${selectedTrimestre}">${cours.sigle}</a>
                                </strong>
                            </div>
                            <div style="text-align: center;" class="small">${cours.nomCours}</div>`;
                            sigleNomCoursCell.rowSpan = coursArray.length;
                            sigleNomCoursCell.style.backgroundColor = 'whitesmoke';
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
                        if (cours.moycomp1 !== null) {
                            addHoverEffectToCell(comp1Cell, cours.moycomp1,  cours.ecartcomp1, cours.ponderationComp1, "C1"); // Apply hover effect to the cell
                        }

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
                        if (cours.moycomp2 !== null) {
                            addHoverEffectToCell(comp2Cell, cours.moycomp2, cours.ecartcomp2, cours.ponderationComp2, "C2");
                        }

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
                        if (cours.moycomp3 !== null) {
                            addHoverEffectToCell(comp3Cell, cours.moycomp3, cours.ecartcomp3, cours.ponderationComp3, "C3");
                        }

                        const resCell = document.createElement('td');
                        const resValue = getCoursCellValue(cours.totalnotepond);
                        const resValueFormatted = resValue.value !== '' ? resValue.value.toFixed(0) : ''; // Supprimer les chiffres après la virgule
                        const resDiv = document.createElement('div');
                        resDiv.style.display = 'flex';
                        resDiv.style.justifyContent = 'center'; // Centrer le contenu
                        const resValueSpan = document.createElement('span');
                        resValueSpan.style.fontWeight = 'bold';
                        resValueSpan.style.fontSize = '15px'; // Augmenter la taille de la police
                        resValueSpan.textContent = resValueFormatted !== '' ? resValueFormatted + "/" + cours.totalpond: '/' + cours.totalpond;
                        if (cours.moyenneTotal !== null) {
                            addHoverEffectToCell(resCell, cours.moyenneTotal,  cours.ecartTotal, "T", "T", cours.total);
                        }

                        resDiv.appendChild(resValueSpan);

                        if (resValueFormatted !== ''){
                            const resPonderationSpan = document.createElement('span');
                            // resPonderationSpan.textContent = "%"; // Ajouter le signe "%"
                            resDiv.appendChild(resPonderationSpan);
                        }


                        resCell.appendChild(resDiv);
                        row.appendChild(resCell);
                        table.appendChild(row);
                    });

                    if (1 === 1) {
                        const totalRow = document.createElement('tr');
                        const totalTitleCell = document.createElement('td');
                        totalTitleCell.style.fontWeight = 'bold';
                        totalTitleCell.textContent = 'Total';
                        totalRow.appendChild(totalTitleCell);

                        const coteZCell = document.createElement('td');
                        coteZCell.style.textAlign = 'center';
                        coteZCell.style.fontWeight = 'bold';
                        coteZCell.style.whiteSpace = 'pre';

                        if (coteZLettre !== '') {
                            const encircledText = document.createElement('span');
                            encircledText.style.border = '2px solid blue';
                            encircledText.style.borderRadius = '50%';
                            encircledText.style.display = 'inline-block';
                            encircledText.style.width = '35px';
                            encircledText.style.height = '35px';
                            encircledText.style.lineHeight = '35px';
                            encircledText.style.color = 'blue';
                            encircledText.style.textAlign = 'center';
                            encircledText.textContent = coteZLettre;

                            coteZCell.appendChild(encircledText);
                            coteZCell.innerHTML += '       ' + coteZChiffre;
                        } else {
                            coteZCell.textContent = coteZChiffre;
                        }

                        totalRow.appendChild(coteZCell);

                        // Create cells for totalComp1, totalComp2, and totalComp3
                        const totalComp1Cell = document.createElement('td');
                        if (moycomp1total !== null) {
                            addHoverEffectToCell(totalComp1Cell, moycomp1total, ecartcomp1total, totalComp1Pond, "TC1");
                        }
                        const totalComp2Cell = document.createElement('td');
                        if (moycomp2total !== null) {
                            addHoverEffectToCell(totalComp2Cell, moycomp2total, ecartcomp2total, totalComp2Pond, "TC2");
                        }
                        const totalComp3Cell = document.createElement('td');
                        if (moycomp3total !== null) {
                            addHoverEffectToCell(totalComp3Cell, moycomp3total, ecartcomp3total, totalComp3Pond, "TC3");
                        }

                        if (totalComp1 !== ''  && totalComp1Pond !== '') {
                            totalComp1Cell.textContent = totalComp1 + ' / ' + totalComp1Pond;
                            totalComp1Cell.style.fontSize = '16px'; // Set the font size
                            totalComp1Cell.style.fontWeight = 'bold';
                        } else {
                            totalComp1Cell.textContent = '/' + totalComp1Pond;
                        }

                        if (totalComp2 !== '' && totalComp2Pond !== '') {
                            totalComp2Cell.textContent = totalComp2 + ' / ' + totalComp2Pond;
                            totalComp2Cell.style.fontSize = '16px'; // Set the font size
                            totalComp2Cell.style.fontWeight = 'bold';
                        } else {
                            totalComp2Cell.textContent = '/' + totalComp2Pond;
                        }

                        if (totalComp3 !== '' && totalComp3Pond !== '') {
                            totalComp3Cell.textContent = totalComp3 + ' / ' + totalComp3Pond;
                            totalComp3Cell.style.fontSize = '16px'; // Set the font size
                            totalComp3Cell.style.fontWeight = 'bold';
                        } else {
                            totalComp3Cell.textContent = '/' + totalComp3Pond;
                        }

                        totalRow.appendChild(totalComp1Cell);
                        totalRow.appendChild(totalComp2Cell);
                        totalRow.appendChild(totalComp3Cell);

                        table.appendChild(totalRow);

                        const resultCell = document.createElement('td');
                        if (moynotetotal !== null) {
                            addHoverEffectToCell(resultCell, moynotetotal, ecartnotetotal, "t", "y", currentTotalValue);
                        }
                        resultCell.style.textAlign = 'center';
                        resultCell.style.fontWeight = 'bold';
                        totalRow.style.fontSize = '18px';
                        const totalValueFormatted = notePondtotal !== '' ? notePondtotal : '';
                        if (totalValueFormatted !== undefined) {
                            resultCell.textContent = totalValueFormatted !== '' ? totalValueFormatted + "/" + pondcours : '';
                        } else {
                            resultCell.textContent = '/' + pondcours;
                        }


                        if (currentTotalValue < 50) {
                            resultCell.classList.add('red');
                        } else if (currentTotalValue >= 50 && currentTotalValue < 60) {
                            resultCell.classList.add('orangered');
                        } else if (currentTotalValue >= 60 && currentTotalValue < 75) {
                            resultCell.classList.add('yellow');
                        } else if (currentTotalValue >= 75 && currentTotalValue < 85) {
                            resultCell.classList.add('lightgreen');
                        } else {
                            resultCell.classList.add('limegreen');
                        }

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
            const coteZTotal = response.data.CoteZTotal !== undefined ? response.data.CoteZTotal : "Aucune Cote Z Totale";
            console.log("cote Z total = " + coteZTotal);

            axios.get("http://localhost:8888/api/selectCoteZTrimestre/" + cip + "/" + selectedTrimestre)
                .then(function (response) {
                    const coteZTrimestre = response.data[0] !==  null ? response.data[0].coteZTrimestre: "Aucune cote Z Trimestre";
                    const resultDiv = document.createElement('div');
                    resultDiv.innerHTML = `Cote Z Trimestre: ${coteZTrimestre}`;
                    resultDiv.style.position = 'absolute';
                    resultDiv.style.top = '102px';
                    resultDiv.style.right = '28px';
                    resultDiv.style.fontFamily = 'Poppins';
                    span.appendChild(resultDiv);

                    const totalDiv = document.createElement('div');
                    totalDiv.innerHTML = `Cote Z Total: ${coteZTotal}`;
                    totalDiv.style.position = 'absolute';
                    totalDiv.style.top = '120px'; // Adjust the value to move it down or up
                    totalDiv.style.right = '28px';
                    totalDiv.style.fontFamily = 'Poppins';
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
    //let logoutURL = "http://localhost:8180/realms/usager/protocol/openid-connect/logout"
    //window.location.href = logoutURL;
    keycloak.logout({ redirectUri: 'http://localhost/usager/' });


}


const addHoverEffectToCell = (cell, moyenne, ecart, ponderation, type, total) => {
    let box = null;
    if (ecart === undefined) {
        ecart = '-'
    }
    cell.addEventListener('mouseover', function () {
        if (moyenne == null) {
            return;
        }
        box = document.createElement('div');
        box.classList.add('box');
        if (type === "C1" || type === "C2" || type === "C3" || type === "TC1" || type === "TC2" || type === "TC3"){
            box.innerHTML = "Moyenne : " + moyenne + "/" + ponderation + "<br>" + "Ecart-Type: " + ecart;
        } else {
            box.innerHTML = "Note (%): " +  total  + "%" + "<br>" + "Moyenne : " + moyenne + "%" + "<br>" + "Ecart-Type: " + ecart + "%";
        }

        const rect = cell.getBoundingClientRect();
        box.style.top = `${rect.top}px`;
        box.style.left = `${rect.right}px`;

        document.body.appendChild(box);
        box.style.display = 'block';

        window.addEventListener('scroll', updatePopupPosition);
    });

    cell.addEventListener('mouseout', function () {
        if (box && box.parentNode === document.body) {
            box.style.display = 'none';
            document.body.removeChild(box);
            box = null;
        }
        window.removeEventListener('scroll', updatePopupPosition);
    });

    function updatePopupPosition() {
        if (box && box.parentNode === document.body) {
            const rect = cell.getBoundingClientRect();
            box.style.top = `${rect.top}px`;
            box.style.left = `${rect.right}px`;
        }
    }
};