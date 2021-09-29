window.addEventListener('load', () => {
    const all = document.getElementById('box');
    this.addEventListener('message', e => {
        if (e.data.show) {
            all.style.display = "flex";
            console.log(e.data.data)
        } else {
            all.style.display = "none";
        }
    })
})