function iniciarRellotge() {
    const rellotge = document.createElement('div');
    rellotge.id = 'rellotge';
    rellotge.style.position = 'fixed';
    rellotge.style.top = '10px';
    rellotge.style.right = '10px';
    document.body.appendChild(rellotge);

    let segons = 0;
    setInterval(() => {
        segons++;
        rellotge.textContent = `Temps: ${segons}s`;
    }, 1000);
}

function validarFormulari() {
    const pass1 = document.getElementById('password1').value;
    const pass2 = document.getElementById('password2').value;
    if (pass1 !== pass2 || pass1.length < 8) {
        alert('Les contrasenyes no coincideixen o són massa curtes.');
        return false;
    }
    alert('Formulari enviat correctament!');
    return true;
}
function mostrarSeccio(element) {
    element.style.backgroundColor = '#333';
    element.style.color = '#fff';
    const textOcult = element.querySelector('.text-ocult');
    if (textOcult) {
        textOcult.style.display = 'block';
    }
}

function ocultarSeccio(element) {
    element.style.backgroundColor = '#f4f4f4';
    element.style.color = '#333';
    const textOcult = element.querySelector('.text-ocult');
    if (textOcult) {
        textOcult.style.display = 'none';
    }
}
function mostrarImatge(img) {
    const imatgeGran = document.getElementById('imatge-gran');
    const contenidor = document.getElementById('imatge-gran-container');

    // Assignar el src de la imatge clicada a la imatge gran
    imatgeGran.src = img.src;

    // Fer visible el contenidor de la imatge gran
    contenidor.style.display = 'block';
}

