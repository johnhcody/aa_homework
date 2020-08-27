function titleize(nameArray, printCallback) {
    function printCallback(nameArray) {
        nameArray.forEach {
            console.log(`"Mx. " + ${name} + " Jingleheimer Schmidt"`);
        }
    }
}

//titleize(["Mary", "Brian", "Leo"], printCallback);


//solution:

// function titleize(names, callback) {
//     let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
//     callback(titleized);
// };

// // invoking the function
// titleize(["Mary", "Brian", "Leo"], (names) => {
//     names.forEach(name => console.log(name));
// });


function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
    
    Elephant.prototype.trumpet = function() {
        console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
    }

    Elephant.prototype.grow = function() {
        this.height = this.height + 12;
        return height;
    }

    Elephant.prototype.addTrick(trick) = function() {
        this.tricks.push(trick);
        return tricks;
    }

    Elephant.prototype.play = function() {
        const item = this.tricks[Math.floor(Math.random() * this.tricks.length)];
        return item;
    }


}


// solution


// function Elephant(name, height, tricks) {
//     this.name = name;
//     this.height = height;
//     this.tricks = tricks;
// }

// Elephant.prototype.trumpet = function () {
//     console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
// };

// Elephant.prototype.grow = function () {
//     this.height = this.height + 12;
// };

// Elephant.prototype.addTrick = function (trick) {
//     this.tricks.push(trick);
// };

// Elephant.prototype.play = function () {
//     trickIndex = Math.floor(Math.random() * this.tricks.length);
//     console.log(`${this.name} is ${this.tricks[trickIndex]}!`);
// };
