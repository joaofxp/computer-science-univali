import { WorkerProxyObject } from './proxy/worker';

// console.warn('Init Worker');

let window: any = WorkerProxyObject('window');

window.hihi = "HIHI";

// window.document.body.innerHTML = 'Click me! <input type="number"></input>';

window.document.body.addEventListener('click', async (mouseEvent) => {
    const screenX = await mouseEvent.screenX;
    window.alert('Hello From Worker! MouseEvent.screenX=' + screenX);

    for (var i = 0; i < 50000; i++) {
        if (i === 49999)
            console.log('end');
    }


}, false);

//precisa usar await pra pegar o valor da variavel

// self.onmessage = function (e) {
//     console.log(e);
// }

