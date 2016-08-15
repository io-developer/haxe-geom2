(function (console, $hx_exports) { "use strict";
$hx_exports.iodev = $hx_exports.iodev || {};
$hx_exports.iodev.geom2 = $hx_exports.iodev.geom2 || {};
$hx_exports.iodev.geom2.intersec = $hx_exports.iodev.geom2.intersec || {};
var iodev_geom2_Vec = $hx_exports.iodev.geom2.Vec = function(x,y) {
	if(y == null) y = 0.0;
	if(x == null) x = 0.0;
	this.x = x;
	this.y = y;
};
iodev_geom2_Vec.fromXY = function(x,y) {
	return new iodev_geom2_Vec(x,y);
};
iodev_geom2_Vec.fromPolar = function(radians,len) {
	if(len == null) len = 1.0;
	var x;
	var y;
	x = len * Math.cos(radians);
	y = len * Math.sin(radians);
	return new iodev_geom2_Vec(x,y);
};
iodev_geom2_Vec.fromAdd = function(a,b) {
	var x;
	var y;
	x = a.x + b.x;
	y = a.y + b.y;
	return new iodev_geom2_Vec(x,y);
};
iodev_geom2_Vec.fromSub = function(a,b) {
	var x;
	var y;
	x = a.x - b.x;
	y = a.y - b.y;
	return new iodev_geom2_Vec(x,y);
};
iodev_geom2_Vec.fromMul = function(a,b) {
	var x;
	var y;
	x = a.x * b.x;
	y = a.y * b.y;
	return new iodev_geom2_Vec(x,y);
};
iodev_geom2_Vec.fromDiv = function(a,b) {
	var x;
	var y;
	x = a.x / b.x;
	y = a.y / b.y;
	return new iodev_geom2_Vec(x,y);
};
iodev_geom2_Vec.normalBisectorFrom = function(a,b) {
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
	return new iodev_geom2_Vec(x,y);
};
iodev_geom2_Vec.equals = function(a,b) {
	return a.x == b.x && a.y == b.y;
};
iodev_geom2_Vec.dotProd = function(a,b) {
	return a.x * b.x + a.y * b.y;
};
iodev_geom2_Vec.skewProd = function(a,b) {
	return a.x * b.y - a.y * b.x;
};
iodev_geom2_Vec.lengthBetween = function(a,b) {
	var vX = b.x - a.x;
	var vY = b.y - a.y;
	return Math.sqrt(vX * vX + vY * vY);
};
iodev_geom2_Vec.magnitudeBetween = function(a,b) {
	var vX = b.x - a.x;
	var vY = b.y - a.y;
	return vX * vX + vY * vY;
};
iodev_geom2_Vec.radiansBetween = function(a,b) {
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
iodev_geom2_Vec.radiansBetweenNormals = function(a,b) {
	return Math.acos(a.x * b.x + a.y * b.y);
};
iodev_geom2_Vec.prototype = {
	clone: function() {
		return new iodev_geom2_Vec(this.x,this.y);
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
var iodev_geom2_VecBuilder = $hx_exports.iodev.geom2.VecBuilder = function(x,y) {
	if(y == null) y = 0.0;
	if(x == null) x = 0.0;
	this._y = 0.0;
	this._x = 0.0;
	this._x = x;
	this._y = y;
};
iodev_geom2_VecBuilder.create = function() {
	return new iodev_geom2_VecBuilder();
};
iodev_geom2_VecBuilder.fromXY = function(x,y) {
	if(y == null) y = 0.0;
	if(x == null) x = 0.0;
	return new iodev_geom2_VecBuilder(x,y);
};
iodev_geom2_VecBuilder.fromVec = function(v) {
	return new iodev_geom2_VecBuilder(v.x,v.y);
};
iodev_geom2_VecBuilder.fromPolar = function(radians,len) {
	if(len == null) len = 1.0;
	var x;
	var y;
	x = len * Math.cos(radians);
	y = len * Math.sin(radians);
	return new iodev_geom2_VecBuilder(x,y);
};
iodev_geom2_VecBuilder.prototype = {
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
		return new iodev_geom2_Vec(this._x,this._y);
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
var iodev_geom2_intersec_CircleIntersec = $hx_exports.iodev.geom2.intersec.CircleIntersec = function() { };
iodev_geom2_intersec_CircleIntersec.circleLine = function(cpos,cradius,lpos,lvec) {
	var ax;
	var ay;
	var bx;
	var by;
	var cnt;
	var dstarr;
	var lvx = lvec.x;
	var lvy = lvec.y;
	var lvmag = lvx * lvx + lvy * lvy;
	var cvx = cpos.x - lpos.x;
	var cvy = cpos.y - lpos.y;
	var m = (lvx * cvx + lvy * cvy) / lvmag;
	var pvx = m * lvx;
	var pvy = m * lvy;
	var dmag = cradius * cradius - ((pvx - cvx) * (pvx - cvx) + (pvy - cvy) * (pvy - cvy));
	if(dmag > 0) {
		var sm = Math.sqrt(dmag / lvmag);
		ax = lpos.x + pvx - sm * lvx;
		ay = lpos.y + pvy - sm * lvy;
		bx = lpos.x + pvx + sm * lvx;
		by = lpos.y + pvy + sm * lvy;
		cnt = 2;
	} else if(dmag == 0) {
		ax = bx = lpos.x + pvx;
		ay = by = lpos.y + pvy;
		cnt = 1;
	} else {
		ax = bx = NaN;
		ay = by = NaN;
		cnt = 0;
	}
	if(cnt == 2) dstarr = [new iodev_geom2_Vec(ax,ay),new iodev_geom2_Vec(bx,by)]; else if(cnt == 1) dstarr = [new iodev_geom2_Vec(ax,ay)]; else dstarr = [];
	return dstarr;
};
iodev_geom2_intersec_CircleIntersec.circleLineTo = function(dsta,dstb,cpos,cradius,lpos,lvec) {
	var cnt;
	var lvx = lvec.x;
	var lvy = lvec.y;
	var lvmag = lvx * lvx + lvy * lvy;
	var cvx = cpos.x - lpos.x;
	var cvy = cpos.y - lpos.y;
	var m = (lvx * cvx + lvy * cvy) / lvmag;
	var pvx = m * lvx;
	var pvy = m * lvy;
	var dmag = cradius * cradius - ((pvx - cvx) * (pvx - cvx) + (pvy - cvy) * (pvy - cvy));
	if(dmag > 0) {
		var sm = Math.sqrt(dmag / lvmag);
		dsta.x = lpos.x + pvx - sm * lvx;
		dsta.y = lpos.y + pvy - sm * lvy;
		dstb.x = lpos.x + pvx + sm * lvx;
		dstb.y = lpos.y + pvy + sm * lvy;
		cnt = 2;
	} else if(dmag == 0) {
		dsta.x = dstb.x = lpos.x + pvx;
		dsta.y = dstb.y = lpos.y + pvy;
		cnt = 1;
	} else {
		dsta.x = dstb.x = NaN;
		dsta.y = dstb.y = NaN;
		cnt = 0;
	}
	return cnt;
};
iodev_geom2_intersec_CircleIntersec.circleRay = function(cpos,cradius,rpos,rvec) {
	var ax;
	var ay;
	var bx;
	var by;
	var cnt;
	var dstarr;
	var lvx = rvec.x;
	var lvy = rvec.y;
	var lvmag = lvx * lvx + lvy * lvy;
	var cvx = cpos.x - rpos.x;
	var cvy = cpos.y - rpos.y;
	var m = (lvx * cvx + lvy * cvy) / lvmag;
	var pvx = m * lvx;
	var pvy = m * lvy;
	var dmag = cradius * cradius - ((pvx - cvx) * (pvx - cvx) + (pvy - cvy) * (pvy - cvy));
	if(dmag > 0) {
		var sm = Math.sqrt(dmag / lvmag);
		ax = rpos.x + pvx - sm * lvx;
		ay = rpos.y + pvy - sm * lvy;
		bx = rpos.x + pvx + sm * lvx;
		by = rpos.y + pvy + sm * lvy;
		cnt = 2;
	} else if(dmag == 0) {
		ax = bx = rpos.x + pvx;
		ay = by = rpos.y + pvy;
		cnt = 1;
	} else {
		ax = bx = NaN;
		ay = by = NaN;
		cnt = 0;
	}
	if(cnt > 0 && !(rvec.x * (bx - rpos.x) + rvec.y * (by - rpos.y) >= 0)) {
		cnt--;
		bx = ax;
		by = ay;
	}
	if(cnt > 0 && !(rvec.x * (ax - rpos.x) + rvec.y * (ay - rpos.y) >= 0)) {
		cnt--;
		var t = ax;
		ax = bx;
		bx = t;
		t = ay;
		ay = by;
		by = t;
	}
	if(cnt == 2) dstarr = [new iodev_geom2_Vec(ax,ay),new iodev_geom2_Vec(bx,by)]; else if(cnt == 1) dstarr = [new iodev_geom2_Vec(ax,ay)]; else dstarr = [];
	return dstarr;
};
iodev_geom2_intersec_CircleIntersec.circleRayTo = function(dsta,dstb,cpos,cradius,rpos,rvec) {
	var cnt;
	var lvx = rvec.x;
	var lvy = rvec.y;
	var lvmag = lvx * lvx + lvy * lvy;
	var cvx = cpos.x - rpos.x;
	var cvy = cpos.y - rpos.y;
	var m = (lvx * cvx + lvy * cvy) / lvmag;
	var pvx = m * lvx;
	var pvy = m * lvy;
	var dmag = cradius * cradius - ((pvx - cvx) * (pvx - cvx) + (pvy - cvy) * (pvy - cvy));
	if(dmag > 0) {
		var sm = Math.sqrt(dmag / lvmag);
		dsta.x = rpos.x + pvx - sm * lvx;
		dsta.y = rpos.y + pvy - sm * lvy;
		dstb.x = rpos.x + pvx + sm * lvx;
		dstb.y = rpos.y + pvy + sm * lvy;
		cnt = 2;
	} else if(dmag == 0) {
		dsta.x = dstb.x = rpos.x + pvx;
		dsta.y = dstb.y = rpos.y + pvy;
		cnt = 1;
	} else {
		dsta.x = dstb.x = NaN;
		dsta.y = dstb.y = NaN;
		cnt = 0;
	}
	if(cnt > 0 && !(rvec.x * (dstb.x - rpos.x) + rvec.y * (dstb.y - rpos.y) >= 0)) {
		cnt--;
		dstb.x = dsta.x;
		dstb.y = dsta.y;
	}
	if(cnt > 0 && !(rvec.x * (dsta.x - rpos.x) + rvec.y * (dsta.y - rpos.y) >= 0)) {
		cnt--;
		var t = dsta.x;
		dsta.x = dstb.x;
		dstb.x = t;
		t = dsta.y;
		dsta.y = dstb.y;
		dstb.y = t;
	}
	return cnt;
};
iodev_geom2_intersec_CircleIntersec.circleSegm = function(cpos,cradius,spos,svec) {
	var ax;
	var ay;
	var bx;
	var by;
	var cnt;
	var dstarr;
	var lvx = svec.x;
	var lvy = svec.y;
	var lvmag = lvx * lvx + lvy * lvy;
	var cvx = cpos.x - spos.x;
	var cvy = cpos.y - spos.y;
	var m = (lvx * cvx + lvy * cvy) / lvmag;
	var pvx = m * lvx;
	var pvy = m * lvy;
	var dmag = cradius * cradius - ((pvx - cvx) * (pvx - cvx) + (pvy - cvy) * (pvy - cvy));
	if(dmag > 0) {
		var sm = Math.sqrt(dmag / lvmag);
		ax = spos.x + pvx - sm * lvx;
		ay = spos.y + pvy - sm * lvy;
		bx = spos.x + pvx + sm * lvx;
		by = spos.y + pvy + sm * lvy;
		cnt = 2;
	} else if(dmag == 0) {
		ax = bx = spos.x + pvx;
		ay = by = spos.y + pvy;
		cnt = 1;
	} else {
		ax = bx = NaN;
		ay = by = NaN;
		cnt = 0;
	}
	if(cnt > 0 && !((svec.x * (bx - spos.x) + svec.y * (by - spos.y)) * (svec.x * (bx - (spos.x + svec.x)) + svec.y * (by - (spos.y + svec.y))) <= 0)) {
		cnt--;
		bx = ax;
		by = ay;
	}
	if(cnt > 0 && !((svec.x * (ax - spos.x) + svec.y * (ay - spos.y)) * (svec.x * (ax - (spos.x + svec.x)) + svec.y * (ay - (spos.y + svec.y))) <= 0)) {
		cnt--;
		var t = ax;
		ax = bx;
		bx = t;
		t = ay;
		ay = by;
		by = t;
	}
	if(cnt == 2) dstarr = [new iodev_geom2_Vec(ax,ay),new iodev_geom2_Vec(bx,by)]; else if(cnt == 1) dstarr = [new iodev_geom2_Vec(ax,ay)]; else dstarr = [];
	return dstarr;
};
iodev_geom2_intersec_CircleIntersec.circleSegmTo = function(dsta,dstb,cpos,cradius,spos,svec) {
	var cnt;
	var lvx = svec.x;
	var lvy = svec.y;
	var lvmag = lvx * lvx + lvy * lvy;
	var cvx = cpos.x - spos.x;
	var cvy = cpos.y - spos.y;
	var m = (lvx * cvx + lvy * cvy) / lvmag;
	var pvx = m * lvx;
	var pvy = m * lvy;
	var dmag = cradius * cradius - ((pvx - cvx) * (pvx - cvx) + (pvy - cvy) * (pvy - cvy));
	if(dmag > 0) {
		var sm = Math.sqrt(dmag / lvmag);
		dsta.x = spos.x + pvx - sm * lvx;
		dsta.y = spos.y + pvy - sm * lvy;
		dstb.x = spos.x + pvx + sm * lvx;
		dstb.y = spos.y + pvy + sm * lvy;
		cnt = 2;
	} else if(dmag == 0) {
		dsta.x = dstb.x = spos.x + pvx;
		dsta.y = dstb.y = spos.y + pvy;
		cnt = 1;
	} else {
		dsta.x = dstb.x = NaN;
		dsta.y = dstb.y = NaN;
		cnt = 0;
	}
	if(cnt > 0 && !((svec.x * (dstb.x - spos.x) + svec.y * (dstb.y - spos.y)) * (svec.x * (dstb.x - (spos.x + svec.x)) + svec.y * (dstb.y - (spos.y + svec.y))) <= 0)) {
		cnt--;
		dstb.x = dsta.x;
		dstb.y = dsta.y;
	}
	if(cnt > 0 && !((svec.x * (dsta.x - spos.x) + svec.y * (dsta.y - spos.y)) * (svec.x * (dsta.x - (spos.x + svec.x)) + svec.y * (dsta.y - (spos.y + svec.y))) <= 0)) {
		cnt--;
		var t = dsta.x;
		dsta.x = dstb.x;
		dstb.x = t;
		t = dsta.y;
		dsta.y = dstb.y;
		dstb.y = t;
	}
	return cnt;
};
var iodev_geom2_intersec_LineIntersec = $hx_exports.iodev.geom2.intersec.LineIntersec = function() { };
iodev_geom2_intersec_LineIntersec.lineLine = function(apos,avec,bpos,bvec) {
	var dstx;
	var dsty;
	var dx1dy2 = avec.x * bvec.y;
	var dx2dy1 = bvec.x * avec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dstx = (bpos.x * dx1dy2 - apos.x * dx2dy1 - (bpos.y - apos.y) * avec.x * bvec.x) * isp;
	dsty = (apos.y * dx1dy2 - bpos.y * dx2dy1 + (bpos.x - apos.x) * avec.y * bvec.y) * isp;
	return new iodev_geom2_Vec(dstx,dsty);
};
iodev_geom2_intersec_LineIntersec.lineLineTo = function(dst,apos,avec,bpos,bvec) {
	var dx1dy2 = avec.x * bvec.y;
	var dx2dy1 = bvec.x * avec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (bpos.x * dx1dy2 - apos.x * dx2dy1 - (bpos.y - apos.y) * avec.x * bvec.x) * isp;
	dst.y = (apos.y * dx1dy2 - bpos.y * dx2dy1 + (bpos.x - apos.x) * avec.y * bvec.y) * isp;
};
iodev_geom2_intersec_LineIntersec.lineRay = function(lpos,lvec,rpos,rvec) {
	var dstres;
	var dstx;
	var dsty;
	var dx1dy2 = lvec.x * rvec.y;
	var dx2dy1 = rvec.x * lvec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dstx = (rpos.x * dx1dy2 - lpos.x * dx2dy1 - (rpos.y - lpos.y) * lvec.x * rvec.x) * isp;
	dsty = (lpos.y * dx1dy2 - rpos.y * dx2dy1 + (rpos.x - lpos.x) * lvec.y * rvec.y) * isp;
	dstres = rvec.x * (dstx - rpos.x) + rvec.y * (dsty - rpos.y) >= 0;
	if(dstres) return new iodev_geom2_Vec(dstx,dsty);
	return null;
};
iodev_geom2_intersec_LineIntersec.lineRayTo = function(dst,lpos,lvec,rpos,rvec) {
	var dstres;
	var dx1dy2 = lvec.x * rvec.y;
	var dx2dy1 = rvec.x * lvec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (rpos.x * dx1dy2 - lpos.x * dx2dy1 - (rpos.y - lpos.y) * lvec.x * rvec.x) * isp;
	dst.y = (lpos.y * dx1dy2 - rpos.y * dx2dy1 + (rpos.x - lpos.x) * lvec.y * rvec.y) * isp;
	dstres = rvec.x * (dst.x - rpos.x) + rvec.y * (dst.y - rpos.y) >= 0;
	return dstres;
};
iodev_geom2_intersec_LineIntersec.lineSegm = function(lpos,lvec,spos,svec) {
	var dstres;
	var dstx;
	var dsty;
	var dx1dy2 = lvec.x * svec.y;
	var dx2dy1 = svec.x * lvec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dstx = (spos.x * dx1dy2 - lpos.x * dx2dy1 - (spos.y - lpos.y) * lvec.x * svec.x) * isp;
	dsty = (lpos.y * dx1dy2 - spos.y * dx2dy1 + (spos.x - lpos.x) * lvec.y * svec.y) * isp;
	dstres = (svec.x * (dstx - spos.x) + svec.y * (dsty - spos.y)) * (svec.x * (dstx - (spos.x + svec.x)) + svec.y * (dsty - (spos.y + svec.y))) <= 0;
	if(dstres) return new iodev_geom2_Vec(dstx,dsty);
	return null;
};
iodev_geom2_intersec_LineIntersec.lineSegmTo = function(dst,lpos,lvec,spos,svec) {
	var dstres;
	var dx1dy2 = lvec.x * svec.y;
	var dx2dy1 = svec.x * lvec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (spos.x * dx1dy2 - lpos.x * dx2dy1 - (spos.y - lpos.y) * lvec.x * svec.x) * isp;
	dst.y = (lpos.y * dx1dy2 - spos.y * dx2dy1 + (spos.x - lpos.x) * lvec.y * svec.y) * isp;
	dstres = (svec.x * (dst.x - spos.x) + svec.y * (dst.y - spos.y)) * (svec.x * (dst.x - (spos.x + svec.x)) + svec.y * (dst.y - (spos.y + svec.y))) <= 0;
	return dstres;
};
iodev_geom2_intersec_LineIntersec.rayRay = function(apos,avec,bpos,bvec) {
	var dstres;
	var dstx;
	var dsty;
	var dx1dy2 = avec.x * bvec.y;
	var dx2dy1 = bvec.x * avec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dstx = (bpos.x * dx1dy2 - apos.x * dx2dy1 - (bpos.y - apos.y) * avec.x * bvec.x) * isp;
	dsty = (apos.y * dx1dy2 - bpos.y * dx2dy1 + (bpos.x - apos.x) * avec.y * bvec.y) * isp;
	dstres = avec.x * (dstx - apos.x) + avec.y * (dsty - apos.y) >= 0 && bvec.x * (dstx - bpos.x) + bvec.y * (dsty - bpos.y) >= 0;
	if(dstres) return new iodev_geom2_Vec(dstx,dsty);
	return null;
};
iodev_geom2_intersec_LineIntersec.rayRayTo = function(dst,apos,avec,bpos,bvec) {
	var dstres;
	var dx1dy2 = avec.x * bvec.y;
	var dx2dy1 = bvec.x * avec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (bpos.x * dx1dy2 - apos.x * dx2dy1 - (bpos.y - apos.y) * avec.x * bvec.x) * isp;
	dst.y = (apos.y * dx1dy2 - bpos.y * dx2dy1 + (bpos.x - apos.x) * avec.y * bvec.y) * isp;
	dstres = avec.x * (dst.x - apos.x) + avec.y * (dst.y - apos.y) >= 0 && bvec.x * (dst.x - bpos.x) + bvec.y * (dst.y - bpos.y) >= 0;
	return dstres;
};
iodev_geom2_intersec_LineIntersec.raySegm = function(rpos,rvec,spos,svec) {
	var dstres;
	var dstx;
	var dsty;
	var dx1dy2 = rvec.x * svec.y;
	var dx2dy1 = svec.x * rvec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dstx = (spos.x * dx1dy2 - rpos.x * dx2dy1 - (spos.y - rpos.y) * rvec.x * svec.x) * isp;
	dsty = (rpos.y * dx1dy2 - spos.y * dx2dy1 + (spos.x - rpos.x) * rvec.y * svec.y) * isp;
	dstres = rvec.x * (dstx - rpos.x) + rvec.y * (dsty - rpos.y) >= 0 && (svec.x * (dstx - spos.x) + svec.y * (dsty - spos.y)) * (svec.x * (dstx - (spos.x + svec.x)) + svec.y * (dsty - (spos.y + svec.y))) <= 0;
	if(dstres) return new iodev_geom2_Vec(dstx,dsty);
	return null;
};
iodev_geom2_intersec_LineIntersec.raySegmTo = function(dst,rpos,rvec,spos,svec) {
	var dstres;
	var dx1dy2 = rvec.x * svec.y;
	var dx2dy1 = svec.x * rvec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (spos.x * dx1dy2 - rpos.x * dx2dy1 - (spos.y - rpos.y) * rvec.x * svec.x) * isp;
	dst.y = (rpos.y * dx1dy2 - spos.y * dx2dy1 + (spos.x - rpos.x) * rvec.y * svec.y) * isp;
	dstres = rvec.x * (dst.x - rpos.x) + rvec.y * (dst.y - rpos.y) >= 0 && (svec.x * (dst.x - spos.x) + svec.y * (dst.y - spos.y)) * (svec.x * (dst.x - (spos.x + svec.x)) + svec.y * (dst.y - (spos.y + svec.y))) <= 0;
	return dstres;
};
iodev_geom2_intersec_LineIntersec.segmSegm = function(apos,avec,bpos,bvec) {
	var dstres;
	var dstx;
	var dsty;
	var dx1dy2 = avec.x * bvec.y;
	var dx2dy1 = bvec.x * avec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dstx = (bpos.x * dx1dy2 - apos.x * dx2dy1 - (bpos.y - apos.y) * avec.x * bvec.x) * isp;
	dsty = (apos.y * dx1dy2 - bpos.y * dx2dy1 + (bpos.x - apos.x) * avec.y * bvec.y) * isp;
	dstres = (avec.x * (dstx - apos.x) + avec.y * (dsty - apos.y)) * (avec.x * (dstx - (apos.x + avec.x)) + avec.y * (dsty - (apos.y + avec.y))) <= 0 && (bvec.x * (dstx - bpos.x) + bvec.y * (dsty - bpos.y)) * (bvec.x * (dstx - (bpos.x + bvec.x)) + bvec.y * (dsty - (bpos.y + bvec.y))) <= 0;
	if(dstres) return new iodev_geom2_Vec(dstx,dsty);
	return null;
};
iodev_geom2_intersec_LineIntersec.segmSegmTo = function(dst,apos,avec,bpos,bvec) {
	var dstres;
	var dx1dy2 = avec.x * bvec.y;
	var dx2dy1 = bvec.x * avec.y;
	var isp = 1.0 / (dx1dy2 - dx2dy1);
	dst.x = (bpos.x * dx1dy2 - apos.x * dx2dy1 - (bpos.y - apos.y) * avec.x * bvec.x) * isp;
	dst.y = (apos.y * dx1dy2 - bpos.y * dx2dy1 + (bpos.x - apos.x) * avec.y * bvec.y) * isp;
	dstres = (avec.x * (dst.x - apos.x) + avec.y * (dst.y - apos.y)) * (avec.x * (dst.x - (apos.x + avec.x)) + avec.y * (dst.y - (apos.y + avec.y))) <= 0 && (bvec.x * (dst.x - bpos.x) + bvec.y * (dst.y - bpos.y)) * (bvec.x * (dst.x - (bpos.x + bvec.x)) + bvec.y * (dst.y - (bpos.y + bvec.y))) <= 0;
	return dstres;
};
var iodev_geom2_tests_HitTest = function() { };
var iodev_geom2_tests_SpaceTest = function() { };
})(typeof console != "undefined" ? console : {log:function(){}}, typeof window != "undefined" ? window : exports);
