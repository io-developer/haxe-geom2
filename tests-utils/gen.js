














function genLengthBetween() {
    var results = [];
    for (var i=0; i<10; i++) {
        var ax = 100.0 * (0.5 - Math.random());
        var ay = 100.0 * (0.5 - Math.random());
        
        var bx = 100.0 * (0.5 - Math.random());
        var by = 100.0 * (0.5 - Math.random());
        
        var dx = bx - ax;
        var dy = by - ay;
        
        var res = Math.sqrt(dx * dx + dy * dy);
        
        results.push(""
            + "{ "
            +   "ax: " + ax
            +   ", ay: " + ay
            +   ", bx: " + bx
            +   ", by: " + by
            +   ", res: " + res
            + " }"
        );
    }
    console.log(results.join("\n, "));
}

function genMagnitudeBetween() {
    var results = [];
    for (var i=0; i<10; i++) {
        var ax = 100.0 * (0.5 - Math.random());
        var ay = 100.0 * (0.5 - Math.random());
        
        var bx = 100.0 * (0.5 - Math.random());
        var by = 100.0 * (0.5 - Math.random());
        
        var dx = bx - ax;
        var dy = by - ay;
        
        var res = dx * dx + dy * dy;
        
        results.push(""
            + "{ "
            +   "ax: " + ax
            +   ", ay: " + ay
            +   ", bx: " + bx
            +   ", by: " + by
            +   ", res: " + res
            + " }"
        );
    }
    console.log(results.join("\n, "));
}

function genDotProd() {
    var results = [];
    for (var i=0; i<10; i++) {
        var ax = 100.0 * (0.5 - Math.random());
        var ay = 100.0 * (0.5 - Math.random());
        
        var bx = 100.0 * (0.5 - Math.random());
        var by = 100.0 * (0.5 - Math.random());
        
        var res = ax * bx + ay * by;
        
        results.push(""
            + "{ "
            +   "ax: " + ax
            +   ", ay: " + ay
            +   ", bx: " + bx
            +   ", by: " + by
            +   ", res: " + res
            + " }"
        );
    }
    console.log(results.join("\n, "));
}

function genSkewProd() {
    var results = [];
    for (var i=0; i<10; i++) {
        var ax = 100.0 * (0.5 - Math.random());
        var ay = 100.0 * (0.5 - Math.random());
        
        var bx = 100.0 * (0.5 - Math.random());
        var by = 100.0 * (0.5 - Math.random());
        
        var res = ax * by - ay * bx;
        
        results.push(""
            + "{ "
            +   "ax: " + ax
            +   ", ay: " + ay
            +   ", bx: " + bx
            +   ", by: " + by
            +   ", res: " + res
            + " }"
        );
    }
    console.log(results.join("\n, "));
}

function genPolar() {
    var results = [];
    for (var i=0; i<10; i++) {
        var radians = 100.0 * (0.5 - Math.random());
        var len = 100.0 * (0.5 - Math.random());
        var dstx = len * Math.cos(radians);
        var dsty = len * Math.sin(radians);
        
        results.push(""
            + "{ "
            +   "radians: " + radians
            +   ", len: " + len
            +   ", dstx: " + dstx
            +   ", dsty: " + dsty
            + " }"
        );
    }
    console.log(results.join("\n, "));
}

function genRadiansOf() {
    var results = [];
    for (var i=0; i<10; i++) {
        var x = 100.0 * (0.5 - Math.random());
        var y = 100.0 * (0.5 - Math.random());
        var res = Math.atan2(y, x);
        
        results.push(""
            + "{ "
            +   "x: " + x
            +   ", y: " + y
            +   ", res: " + res
            + " }"
        );
    }
    console.log(results.join("\n, "));
}

function genRadiansBetween() {
    var results = [];
    for (var i=0; i<10; i++) {
        var arad = 2.0 * Math.PI * Math.random();
        var alen = 100.0 * Math.random();
        var ax = alen * Math.cos(arad);
        var ay = alen * Math.sin(arad);
        
        var brad = 2.0 * Math.PI * Math.random();
        var blen = 100.0 * Math.random();
        var bx = blen * Math.cos(brad);
        var by = blen * Math.sin(brad);
        
        var drad = Math.abs((brad - arad));
        var res = (drad > Math.PI)
            ? 2.0 * Math.PI - drad
            : drad;
        
        results.push(""
            + "{ "
            +   "ax: " + ax
            +   ", ay: " + ay
            +   ", bx: " + bx
            +   ", by: " + by
            +   ", res: " + res
            + " }"
        );
    }
    console.log(results.join("\n, "));
}

function genRadiansBetweenNormals() {
    var results = [];
    for (var i=0; i<10; i++) {
        var arad = 2.0 * Math.PI * Math.random();
        var ax = Math.cos(arad);
        var ay = Math.sin(arad);
        
        var brad = 2.0 * Math.PI * Math.random();
        var bx = Math.cos(brad);
        var by = Math.sin(brad);
        
        var drad = Math.abs((brad - arad));
        var res = (drad > Math.PI)
            ? 2.0 * Math.PI - drad
            : drad;
        
        results.push(""
            + "{ "
            +   "ax: " + ax
            +   ", ay: " + ay
            +   ", bx: " + bx
            +   ", by: " + by
            +   ", res: " + res
            + " }"
        );
    }
    console.log(results.join("\n, "));
}


function genNormalBisector() {
    var results = [];
    for (var i=0; i<10; i++) {
        var arad = 2.0 * Math.PI * Math.random();
        var ax = Math.cos(arad);
        var ay = Math.sin(arad);
        
        var brad = 2.0 * Math.PI * Math.random();
        var bx = Math.cos(brad);
        var by = Math.sin(brad);
        
        var sumx = ax + bx;
        var sumy = ay + by;
        var sumlen = Math.sqrt(sumx * sumx + sumy * sumy);
        
        var dstx = sumx / sumlen;
        var dsty = sumy / sumlen;
        
        results.push(""
            + "{ "
            +   "ax: " + ax
            +   ", ay: " + ay
            +   ", bx: " + bx
            +   ", by: " + by
            +   ", dstx: " + dstx
            +   ", dsty: " + dsty
            + " }"
        );
    }
    console.log(results.join("\n, "));
}


function genRotate() {
    var results = [];
    for (var i=0; i<10; i++) {
        var baseRad = 10.0 * (0.5 - Math.random());
        var len = 0.001 + 10.0 * Math.random();
        var x = len * Math.cos(baseRad);
        var y = len * Math.sin(baseRad);
        
        var rad = 10.0 * (0.5 - Math.random());
        var dstx = len * Math.cos(rad + baseRad);
        var dsty = len * Math.sin(rad + baseRad);
        
        results.push(""
            + "{ "
            +   "x: " + x
            +   ", y: " + y
            +   ", rad: " + rad
            +   ", dstx: " + dstx
            +   ", dsty: " + dsty
            + " }"
        );
    }
    console.log(results.join("\n, "));
}


function genRotate90() {
    var results = [];
    for (var i=0; i<10; i++) {
        var baseRad = 10.0 * (0.5 - Math.random());
        var len = 0.001 + 10.0 * Math.random();
        var x = len * Math.cos(baseRad);
        var y = len * Math.sin(baseRad);
        
        var times = Math.round(100.0 * (0.5 - Math.random()));
        var dstx = len * Math.cos(baseRad + times * Math.PI / 2);
        var dsty = len * Math.sin(baseRad + times * Math.PI / 2);
        
        results.push(""
            + "{ "
            +   "x: " + x
            +   ", y: " + y
            +   ", times: " + times
            +   ", dstx: " + dstx
            +   ", dsty: " + dsty
            + " }"
        );
    }
    console.log(results.join("\n, "));
}

function genMirrorBy() {
    var results = [];
    for (var i=0; i<10; i++) {
        var vrad = 10.0 * Math.random();
        var vlen = 0.001 + 10.0 * Math.random();
        var vx = vlen * Math.cos(vrad);
        var vy = vlen * Math.sin(vrad);
        
        var dirrad = Math.PI * 2.0 * (0.5 - Math.random());
        var dirlen = 0.001 + 10.0 * Math.random();
        var dirx = dirlen * Math.cos(vrad + dirrad);
        var diry = dirlen * Math.sin(vrad + dirrad);
        
        var dstx = vlen * Math.cos(vrad + 2.0 * dirrad);
        var dsty = vlen * Math.sin(vrad + 2.0 * dirrad);
        
        results.push(""
            + "{ "
            +   "vx: " + vx
            +   ", vy: " + vy
            +   ", dirx: " + dirx
            +   ", diry: " + diry
            +   ", dstx: " + dstx
            +   ", dsty: " + dsty
            + " }"
        );
    }
    console.log(results.join("\n, "));
}

function genMirrorByNormal() {
    var results = [];
    for (var i=0; i<10; i++) {
        var vrad = 10.0 * Math.random();
        var vlen = 0.001 + 10.0 * Math.random();
        var vx = vlen * Math.cos(vrad);
        var vy = vlen * Math.sin(vrad);
        
        var dirrad = Math.PI * 2.0 * (0.5 - Math.random());
        var dirx = Math.cos(vrad + dirrad);
        var diry = Math.sin(vrad + dirrad);
        
        var dstx = vlen * Math.cos(vrad + 2.0 * dirrad);
        var dsty = vlen * Math.sin(vrad + 2.0 * dirrad);
        
        results.push(""
            + "{ "
            +   "vx: " + vx
            +   ", vy: " + vy
            +   ", dirx: " + dirx
            +   ", diry: " + diry
            +   ", dstx: " + dstx
            +   ", dsty: " + dsty
            + " }"
        );
    }
    console.log(results.join("\n, "));
}


