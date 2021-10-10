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

const appendData = (data) => {
    const cont = document.getElementById('data');

    data.forEach(dataItem => {
        if (document.getElementById(dataItem)) {
            document.getElementById(dataItem).remove()
        }
        const item = document.createElement('span');
        item.textContent = dataItem;
        item.id=dataItem
        cont.appendChild(item);
    });
}