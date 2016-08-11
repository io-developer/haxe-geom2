(function (console, $hx_exports) { "use strict";
$hx_exports.iodev = $hx_exports.iodev || {};
$hx_exports.iodev.geom2 = $hx_exports.iodev.geom2 || {};
var iodev_geom2_Vec2 = $hx_exports.iodev.geom2.Vec2 = function(x,y) {
	if(y == null) y = 0.0;
	if(x == null) x = 0.0;
	this.x = x;
	this.y = y;
};
iodev_geom2_Vec2.fromXY = function(x,y) {
	return new iodev_geom2_Vec2(x,y);
};
iodev_geom2_Vec2.fromPolar = function(radians,len) {
	if(len == null) len = 1.0;
	var x;
	var y;
	x = len * Math.cos(radians);
	y = len * Math.sin(radians);
	return new iodev_geom2_Vec2(x,y);
};
iodev_geom2_Vec2.fromAdd = function(a,b) {
	var x;
	var y;
	x = a.x + b.x;
	y = a.y + b.y;
	return new iodev_geom2_Vec2(x,y);
};
iodev_geom2_Vec2.fromSub = function(a,b) {
	var x;
	var y;
	x = a.x - b.x;
	y = a.y - b.y;
	return new iodev_geom2_Vec2(x,y);
};
iodev_geom2_Vec2.fromMul = function(a,b) {
	var x;
	var y;
	x = a.x * b.x;
	y = a.y * b.y;
	return new iodev_geom2_Vec2(x,y);
};
iodev_geom2_Vec2.fromDiv = function(a,b) {
	var x;
	var y;
	x = a.x / b.x;
	y = a.y / b.y;
	return new iodev_geom2_Vec2(x,y);
};
iodev_geom2_Vec2.normalBisectorFrom = function(a,b) {
	var x;
	var y;
	var normAX;
	var normAY;
	var normBX;
	var normBY;
	var sumX;
	var sumY;
	var m = 1.0 / Math.sqrt(a.x * a.x + a.y * a.y);
	normAX = m * a.x;
	normAY = m * a.y;
	var m1 = 1.0 / Math.sqrt(b.x * b.x + b.y * b.y);
	normBX = m1 * b.x;
	normBY = m1 * b.y;
	sumX = normAX + normBX;
	sumY = normAY + normBY;
	var m2 = 1.0 / Math.sqrt(sumX * sumX + sumY * sumY);
	x = m2 * sumX;
	y = m2 * sumY;
	return new iodev_geom2_Vec2(x,y);
};
iodev_geom2_Vec2.equals = function(a,b) {
	return a.x == b.x && a.y == b.y;
};
iodev_geom2_Vec2.dotProd = function(a,b) {
	return a.x * b.x + a.y * b.y;
};
iodev_geom2_Vec2.skewProd = function(a,b) {
	return a.x * b.y - a.y * b.x;
};
iodev_geom2_Vec2.lengthBetween = function(a,b) {
	var vX = b.x - a.x;
	var vY = b.y - a.y;
	return Math.sqrt(vX * vX + vY * vY);
};
iodev_geom2_Vec2.magnitudeBetween = function(a,b) {
	var vX = b.x - a.x;
	var vY = b.y - a.y;
	return vX * vX + vY * vY;
};
iodev_geom2_Vec2.radiansBetween = function(a,b) {
	var normAX;
	var normAY;
	var normBX;
	var normBY;
	var m = 1.0 / Math.sqrt(a.x * a.x + a.y * a.y);
	normAX = m * a.x;
	normAY = m * a.y;
	var m1 = 1.0 / Math.sqrt(b.x * b.x + b.y * b.y);
	normBX = m1 * b.x;
	normBY = m1 * b.y;
	return Math.acos(normAX * normBX + normAY * normBY);
};
iodev_geom2_Vec2.radiansBetweenNormals = function(a,b) {
	return Math.acos(a.x * b.x + a.y * b.y);
};
iodev_geom2_Vec2.prototype = {
	copyFrom: function(v) {
		this.x = v.x;
		this.y = v.y;
	}
	,clone: function() {
		return new iodev_geom2_Vec2(this.x,this.y);
	}
	,length: function() {
		return Math.sqrt(this.x * this.x + this.y * this.y);
	}
	,magnitude: function() {
		return this.x * this.x + this.y * this.y;
	}
	,normalize: function(len) {
		if(len == null) len = 1.0;
		var m = len / Math.sqrt(this.x * this.x + this.y * this.y);
		this.x = m * this.x;
		this.y = m * this.y;
	}
	,toRadians: function() {
		return Math.atan2(this.y,this.x);
	}
	,toString: function() {
		return "[object Vec2(" + this.x + "; " + this.y + ")]";
	}
};
var iodev_geom2_Vec2Builder = $hx_exports.iodev.geom2.Vec2Builder = function(x,y) {
	if(y == null) y = 0.0;
	if(x == null) x = 0.0;
	this._y = 0.0;
	this._x = 0.0;
	this._x = x;
	this._y = y;
};
iodev_geom2_Vec2Builder.create = function() {
	return new iodev_geom2_Vec2Builder();
};
iodev_geom2_Vec2Builder.fromXY = function(x,y) {
	if(y == null) y = 0.0;
	if(x == null) x = 0.0;
	return new iodev_geom2_Vec2Builder(x,y);
};
iodev_geom2_Vec2Builder.fromVec = function(v) {
	return new iodev_geom2_Vec2Builder(v.x,v.y);
};
iodev_geom2_Vec2Builder.fromPolar = function(radians,len) {
	if(len == null) len = 1.0;
	var x;
	var y;
	x = len * Math.cos(radians);
	y = len * Math.sin(radians);
	return new iodev_geom2_Vec2Builder(x,y);
};
iodev_geom2_Vec2Builder.prototype = {
	setX: function(x) {
		this._x = x;
		return this;
	}
	,setY: function(y) {
		this._y = y;
		return this;
	}
	,setXY: function(x,y) {
		this._x = x;
		this._y = y;
		return this;
	}
	,setPolar: function(radians,len) {
		if(len == null) len = 1.0;
		this._x = len * Math.cos(radians);
		this._y = len * Math.sin(radians);
		return this;
	}
	,negate: function() {
		this._x = -this._x;
		this._y = -this._y;
		return this;
	}
	,swapXY: function() {
		var t = this._x;
		this._x = this._y;
		this._y = t;
		return this;
	}
	,normalize: function(len) {
		if(len == null) len = 1.0;
		var m = len / Math.sqrt(this._x * this._x + this._y * this._y);
		this._x = m * this._x;
		this._y = m * this._y;
		return this;
	}
	,add: function(v) {
		this._x = this._x + v.x;
		this._y = this._y + v.y;
		return this;
	}
	,addXY: function(x,y) {
		this._x = this._x + x;
		this._y = this._y + y;
		return this;
	}
	,subtract: function(v) {
		this._x = this._x - v.x;
		this._y = this._y - v.y;
		return this;
	}
	,subtractXY: function(x,y) {
		this._x = this._x - x;
		this._y = this._y - y;
		return this;
	}
	,multiply: function(v) {
		this._x = this._x * v.x;
		this._y = this._y * v.y;
		return this;
	}
	,multiplyXY: function(x,y) {
		this._x = this._x * x;
		this._y = this._y * y;
		return this;
	}
	,divide: function(v) {
		this._x = this._x / v.x;
		this._y = this._y / v.y;
		return this;
	}
	,divideXY: function(x,y) {
		this._x = this._x / x;
		this._y = this._y / y;
		return this;
	}
	,rotate: function(radians) {
		var sn = Math.sin(radians);
		var cs = Math.cos(radians);
		var sx = this._x;
		this._x = sx * cs - this._y * sn;
		this._y = sx * sn + this._y * cs;
		return this;
	}
	,rotateQuart: function(times) {
		var n = (4 + times % 4) % 4;
		var sn = (2 - n) % 2;
		var cs = (1 - n) % 2;
		var sx = this._x;
		this._x = sx * cs - this._y * sn;
		this._y = sx * sn + this._y * cs;
		return this;
	}
	,mirrorBy: function(v) {
		var nx;
		var ny;
		var m = 1.0 / Math.sqrt(v.x * v.x + v.y * v.y);
		nx = m * v.x;
		ny = m * v.y;
		var rx = ny;
		var ry = -nx;
		var m1 = -2. * (this._x * rx + this._y * ry);
		this._x = this._x + m1 * rx;
		this._y = this._y + m1 * ry;
		return this;
	}
	,mirrorByXY: function(x,y) {
		var nx;
		var ny;
		var m = 1.0 / Math.sqrt(x * x + y * y);
		nx = m * x;
		ny = m * y;
		var rx = ny;
		var ry = -nx;
		var m1 = -2. * (this._x * rx + this._y * ry);
		this._x = this._x + m1 * rx;
		this._y = this._y + m1 * ry;
		return this;
	}
	,mirrorByNormal: function(v) {
		var rx = v.y;
		var ry = -v.x;
		var m = -2. * (this._x * rx + this._y * ry);
		this._x = this._x + m * rx;
		this._y = this._y + m * ry;
		return this;
	}
	,mirrorByNormalXY: function(x,y) {
		var rx = y;
		var ry = -x;
		var m = -2. * (this._x * rx + this._y * ry);
		this._x = this._x + m * rx;
		this._y = this._y + m * ry;
		return this;
	}
	,toVec: function() {
		return new iodev_geom2_Vec2(this._x,this._y);
	}
	,toVecSpecified: function(dst) {
		dst.x = this._x;
		dst.y = this._y;
		return dst;
	}
	,toX: function() {
		return this._x;
	}
	,toY: function() {
		return this._y;
	}
	,toLength: function() {
		return Math.sqrt(this._x * this._x + this._y * this._y);
	}
	,toMagnitude: function() {
		return this._x * this._x + this._y * this._y;
	}
	,toRadians: function() {
		return Math.atan2(this._y,this._x);
	}
};
var iodev_geom2_operations_Intersec2 = function() { };
iodev_geom2_operations_Intersec2.lineLine = function(dst,apos,avec,bpos,bvec) {
	var dx1dy2 = avec.x * bvec.y;
	var dx2dy1 = bvec.x * avec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (bpos.x * dx1dy2 - apos.x * dx2dy1 - (bpos.y - apos.y) * avec.x * bvec.x) * isp;
	dst.y = (apos.y * dx1dy2 - bpos.y * dx2dy1 + (bpos.x - apos.x) * avec.y * bvec.y) * isp;
};
iodev_geom2_operations_Intersec2.lineRay = function(dst,lpos,lvec,rpos,rvec) {
	var dx1dy2 = lvec.x * rvec.y;
	var dx2dy1 = rvec.x * lvec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (rpos.x * dx1dy2 - lpos.x * dx2dy1 - (rpos.y - lpos.y) * lvec.x * rvec.x) * isp;
	dst.y = (lpos.y * dx1dy2 - rpos.y * dx2dy1 + (rpos.x - lpos.x) * lvec.y * rvec.y) * isp;
	return rvec.x * (dst.x - rpos.x) + rvec.y * (dst.y - rpos.y) >= 0;
};
iodev_geom2_operations_Intersec2.lineSegm = function(dst,lpos,lvec,spos,svec) {
	var dx1dy2 = lvec.x * svec.y;
	var dx2dy1 = svec.x * lvec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (spos.x * dx1dy2 - lpos.x * dx2dy1 - (spos.y - lpos.y) * lvec.x * svec.x) * isp;
	dst.y = (lpos.y * dx1dy2 - spos.y * dx2dy1 + (spos.x - lpos.x) * lvec.y * svec.y) * isp;
	return (svec.x * (dst.x - spos.x) + svec.y * (dst.y - spos.y)) * (svec.x * (dst.x - (spos.x + svec.x)) + svec.y * (dst.y - (spos.y + svec.y))) <= 0;
};
iodev_geom2_operations_Intersec2.rayRay = function(dst,apos,avec,bpos,bvec) {
	var dx1dy2 = avec.x * bvec.y;
	var dx2dy1 = bvec.x * avec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (bpos.x * dx1dy2 - apos.x * dx2dy1 - (bpos.y - apos.y) * avec.x * bvec.x) * isp;
	dst.y = (apos.y * dx1dy2 - bpos.y * dx2dy1 + (bpos.x - apos.x) * avec.y * bvec.y) * isp;
	return avec.x * (dst.x - apos.x) + avec.y * (dst.y - apos.y) >= 0 && bvec.x * (dst.x - bpos.x) + bvec.y * (dst.y - bpos.y) >= 0;
};
iodev_geom2_operations_Intersec2.raySegm = function(dst,rpos,rvec,spos,svec) {
	var dx1dy2 = rvec.x * svec.y;
	var dx2dy1 = svec.x * rvec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (spos.x * dx1dy2 - rpos.x * dx2dy1 - (spos.y - rpos.y) * rvec.x * svec.x) * isp;
	dst.y = (rpos.y * dx1dy2 - spos.y * dx2dy1 + (spos.x - rpos.x) * rvec.y * svec.y) * isp;
	return rvec.x * (dst.x - rpos.x) + rvec.y * (dst.y - rpos.y) >= 0 && (svec.x * (dst.x - spos.x) + svec.y * (dst.y - spos.y)) * (svec.x * (dst.x - (spos.x + svec.x)) + svec.y * (dst.y - (spos.y + svec.y))) <= 0;
};
iodev_geom2_operations_Intersec2.segmSegm = function(dst,apos,avec,bpos,bvec) {
	var dx1dy2 = avec.x * bvec.y;
	var dx2dy1 = bvec.x * avec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (bpos.x * dx1dy2 - apos.x * dx2dy1 - (bpos.y - apos.y) * avec.x * bvec.x) * isp;
	dst.y = (apos.y * dx1dy2 - bpos.y * dx2dy1 + (bpos.x - apos.x) * avec.y * bvec.y) * isp;
	return (avec.x * (dst.x - apos.x) + avec.y * (dst.y - apos.y)) * (avec.x * (dst.x - (apos.x + avec.x)) + avec.y * (dst.y - (apos.y + avec.y))) <= 0 && (bvec.x * (dst.x - bpos.x) + bvec.y * (dst.y - bpos.y)) * (bvec.x * (dst.x - (bpos.x + bvec.x)) + bvec.y * (dst.y - (bpos.y + bvec.y))) <= 0;
};
iodev_geom2_operations_Intersec2.circleLine = function(dstA,dstB,lpos,lvec,cpos,cRadius) {
	var dstCount = 0;
	var lvx = lvec.x;
	var lvy = lvec.y;
	var lvmag = lvx * lvx + lvy * lvy;
	var cvx = cpos.x - lpos.x;
	var cvy = cpos.y - lpos.y;
	var m = (lvx * cvx + lvy * cvy) / lvmag;
	var pvx = m * lvx;
	var pvy = m * lvy;
	var dmag = cRadius * cRadius - ((pvx - cvx) * (pvx - cvx) + (pvy - cvy) * (pvy - cvy));
	if(dmag > 0) {
		var sm = Math.sqrt(dmag / lvmag);
		dstA.x = lpos.x + pvx - sm * lvx;
		dstA.y = lpos.y + pvy - sm * lvy;
		dstB.x = lpos.x + pvx + sm * lvx;
		dstB.y = lpos.y + pvy + sm * lvy;
		dstCount = 2;
	} else if(dmag == 0) {
		dstA.x = dstB.x = lpos.x + pvx;
		dstA.y = dstB.y = lpos.y + pvy;
		dstCount = 1;
	} else {
		dstA.x = dstB.x = NaN;
		dstA.y = dstB.y = NaN;
		dstCount = 0;
	}
	return dstCount;
};
var iodev_geom2_tests_HitTest2 = function() { };
var iodev_geom2_tests_SpaceTest2 = function() { };
})(typeof console != "undefined" ? console : {log:function(){}}, typeof window != "undefined" ? window : exports);
