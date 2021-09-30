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

const appendData = data => {
    const cont = document.getElementById('data');
    const allData = document.getElementsByClassName('data');
    if (allData[0]) {
        for (let i=0; i < allData.length; i++) {
            allData[i].remove()
        }
    }

    data.forEach(dataItem => {
        const item = document.createElement('span');
        item.classList.add('data');
        item.textContent = dataItem;
        cont.appendChild(item);
    });
}