document.addEventListener("DOMContentLoaded", function(){


    const canvas = document.getElementById('mycanvas');
    const ctx = canvas.getContext('2d');

    // blue square
    // ctx.linewidth = 10;
    // ctx.fillStyle = 'blue';
    // ctx.fillRect(300, 300, 300, 300);

    ctx.beginPath();
    ctx.strokeStyle = 'blue';
    ctx.linewidth = 20;
    ctx.arc(100, 75, 50, 0, 2 * Math.PI);
    ctx.stroke();
    ctx.fill();

});
