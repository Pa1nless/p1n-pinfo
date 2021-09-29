window.addEventListener('load', () => {
    const all = document.getElementById('box');
    this.addEventListener('message', e => {
        if (e.data.show) {
            appendData(e.data.data);
            all.style.display = "flex";
        } else {
            all.style.display = "none";
        }
    })
})

let count = 0

const appendData = data => {
    const cont = document.getElementById('data');
    const elem = document.createElement('span');
    elem.classList.add('data');
    elem.id = count
    elem.textContent = data;
    cont.appendChild(elem);
    if (count > 2) {
        document.getElementById(count - count + parseInt(elem.id) - 3).remove()
    }
    count = count + 1
}