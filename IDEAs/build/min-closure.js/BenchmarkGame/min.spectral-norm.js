'use strict';function processData(g){function l(d,e){for(var f=d.length&1073741823,b=0;b<f;++b){for(var a=0,c=0;c<f;++c)a+=1/(((b+c)*(b+c+1)>>>1)+b+1)*d[c];e[b]=a}}function m(d,e){for(var f=d.length&1073741823,b=0;b<f;++b){for(var a=0,c=0;c<f;++c)a+=1/(((c+b)*(c+b+1)>>>1)+c+1)*d[c];e[b]=a}}console.log(function(d){var e=new ArrayBuffer(24*d),f=new Float64Array(e,0,d),b=new Float64Array(e,8*d,d),e=new Float64Array(e,16*d,d),a,c=0,g=0;for(a=0;a++<d;)f[a]=1,b[a]=e[a]=0;for(a=0;10>a;++a){var k=b,h=e;l(f,
h);m(h,k);k=f;h=e;l(b,h);m(h,k)}for(a=0;a<d;++a)g+=f[a]*b[a],c+=b[a]*b[a];return Math.sqrt(g/c)}(g).toFixed(9))}process.stdin.resume();process.stdin.setEncoding("utf-8");var _input="";process.stdin.on("data",function(g){_input+=g});process.stdin.on("end",function(){var g=new Date;processData(_input);console.log("Time Elapsed:"+(new Date-g)+"msec")});