
function requestCours() {
    console.log("function called??????????????");
    const div = document.getElementById('title');
    const span = div.firstElementChild;
    axios.get("http://localhost:8888/api/getCours")
        .then(function (response) {
            console.log("Response: ", response.status);
            const coursNames = response.data.map(cours => cours.nomCours);
            const coursList = coursNames.map(coursName => `<strong>${coursName}</strong>`).join('<br>');
            span.innerHTML = coursList;
        })
        .catch(function (error) {
            console.log('Error fetching data:', error);
            span.innerHTML = '<br> <strong>' + error.toString() + '</strong> </br>';
        });
}