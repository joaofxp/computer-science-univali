import { TargetProxy } from './proxy/target';

const DOM: any = (window as any);

DOM.myvariable = "somevalue";

DOM.hue = "uhuhuex";

DOM.consoleLog = (mensagem) => console.log(mensagem)

console.log('Init Target');

const worker = new Worker('worker.js');

const targetProxy = new TargetProxy(worker);
targetProxy.register('window', window);

worker.postMessage("HI");

// const isDone: boolean = false;

// declare var something: string;
// // eval("something = 'testing';")