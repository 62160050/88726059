function convert(){
    var x1 = document.getElementById("number").value;
    div = document.getElementById('disp')
    div.innerHTML = ''
    r1 = x1 / 1000;
    x1 = x1 % 1000;
    r2 = x1 / 500;
    x1 = x1 % 500;
    r3 = x1 / 100;
    x1 = x1 % 100;
    r4 = x1 / 50;
    x1 = x1 % 50;
    r5 = x1 / 20;
    x1 = x1 % 20;
    r6 = x1 / 10;
    x1 = x1 % 10;
    r7 = x1 / 5;
    x1 = x1 % 5;
    r8 = x1 / 2;
    x1 = x1 % 2;
    r9 = x1 / 1;
    x1 = x1 % 1;
    table = ``
    table += `<tr>
                 <td>แบงค์ 1000 : ${Math.floor(r1)} ใบ</td>
             </tr>
             <tr>
             <td>แบงค์ 500 : ${Math.floor(r2)} ใบ</td>
             </tr>
             <tr>
             <td>แบงค์ 100 : ${Math.floor(r3)} ใบ</td>
             </tr>
             <tr>
             <td>แบงค์ 50 : ${Math.floor(r4)} ใบ</td>
             </tr>
             <tr>
             <td>แบงค์ 20 : ${Math.floor(r5)} ใบ</td>
             </tr>
             <tr>
             <td>เหรียญ 10 : ${Math.floor(r6)} เหรียญ</td>
             </tr>
             <tr>
             <td>เหรียญ 5 : ${Math.floor(r7)} เหรียญ</td>
             </tr>
             <tr>
             <td>เหรียญ 2 : ${Math.floor(r8)} เหรียญ</td>
             </tr>
             <tr>
             <td>เหรียญ 1 : ${Math.floor(r9)} เหรียญ</td>
             </tr>`
    div.innerHTML = table


}