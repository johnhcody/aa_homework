window.setTimeout(function () {
  alert('HAMMERTIME');
}, 5000);


function hammerTime(time) {

  setTimeout(function hammertime()) {
    console.log(`${time} is hammertime!`);
  }

}

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

reader.question('Would you like tea or biscuits?', (answer) => {
  console.log(`OK, noted that you said ${answer}`);
  reader.close();
});



// Simple Timeout

window.setTimeout(function () {
  alert('HAMMER TIME!');
}, 5000);

// // Timeout with a Closure

function hammerTime (time) {
  window.setTimeout(function () {
    alert(`${time} is HAMMER TIME!`);
  });
}
