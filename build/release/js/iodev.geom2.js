(function (console, $hx_exports) { "use strict";
$hx_exports.iodev = $hx_exports.iodev || {};
$hx_exports.iodev.geom2 = $hx_exports.iodev.geom2 || {};
$hx_exports.iodev.geom2.operations = $hx_exports.iodev.geom2.operations || {};
var iodev_geom2_Vec2 = $hx_exports.iodev.geom2.Vec2 = function(x,y) {
	if(y == null) y = 0.0;
	if(x == null) x = 0.0;
	this.x = x;
	this.y = y;
};
iodev_geom2_Vec2.prototype = {
	clone: function() {
		return new iodev_geom2_Vec2(this.x,this.y);
	}
	,equals: function(v) {
		return this.x == v.x && this.y == v.y;
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
	,toString: function() {
		return "[object Vec2(" + this.x + "; " + this.y + ")]";
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
var iodev_geom2_operations_Vecop2 = $hx_exports.iodev.geom2.operations.Vecop2 = function() { };
iodev_geom2_operations_Vecop2.add = function(a,b) {
	var dst = new iodev_geom2_Vec2();
	dst.x = a.x + b.x;
	dst.y = a.y + b.y;
	return dst;
};
iodev_geom2_operations_Vecop2.subtract = function(a,b) {
	var dst = new iodev_geom2_Vec2();
	dst.x = a.x - b.x;
	dst.y = a.y - b.y;
	return dst;
};
iodev_geom2_operations_Vecop2.multiply = function(a,b) {
	var dst = new iodev_geom2_Vec2();
	dst.x = a.x * b.x;
	dst.y = a.y * b.y;
	return dst;
};
iodev_geom2_operations_Vecop2.divide = function(a,b) {
	var dst = new iodev_geom2_Vec2();
	dst.x = a.x / b.x;
	dst.y = a.y / b.y;
	return dst;
};
iodev_geom2_operations_Vecop2.dotProd = function(a,b) {
	return a.x * b.x + a.y * b.y;
};
iodev_geom2_operations_Vecop2.skewProd = function(a,b) {
	return a.x * b.y - a.y * b.x;
};
iodev_geom2_operations_Vecop2.lengthBetween = function(a,b) {
	var vX = b.x - a.x;
	var vY = b.y - a.y;
	return Math.sqrt(vX * vX + vY * vY);
};
iodev_geom2_operations_Vecop2.magnitudeBetween = function(a,b) {
	var vX = b.x - a.x;
	var vY = b.y - a.y;
	return vX * vX + vY * vY;
};
iodev_geom2_operations_Vecop2.polar = function(radians,len) {
	if(len == null) len = 1.0;
	var dst = new iodev_geom2_Vec2();
	dst.x = len * Math.cos(radians);
	dst.y = len * Math.sin(radians);
	return dst;
};
iodev_geom2_operations_Vecop2.radiansOf = function(v) {
	return Math.atan2(v.y,v.x);
};
iodev_geom2_operations_Vecop2.radiansBetween = function(a,b) {
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
iodev_geom2_operations_Vecop2.radiansBetweenNormals = function(a,b) {
	return Math.acos(a.x * b.x + a.y * b.y);
};
iodev_geom2_operations_Vecop2.normalBisector = function(a,b) {
	var dst = new iodev_geom2_Vec2();
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
	dst.x = m2 * sumX;
	dst.y = m2 * sumY;
	return dst;
};
iodev_geom2_operations_Vecop2.rotate = function(v,radians) {
	var dst = new iodev_geom2_Vec2();
	var sn = Math.sin(radians);
	var cs = Math.cos(radians);
	var sx = v.x;
	dst.x = sx * cs - v.y * sn;
	dst.y = sx * sn + v.y * cs;
	return dst;
};
iodev_geom2_operations_Vecop2.rotateQuart = function(v,times) {
	if(times == null) times = 1;
	var dst = new iodev_geom2_Vec2();
	var n = (4 + times % 4) % 4;
	var sn = (2 - n) % 2;
	var cs = (1 - n) % 2;
	var sx = v.x;
	dst.x = sx * cs - v.y * sn;
	dst.y = sx * sn + v.y * cs;
	return dst;
};
iodev_geom2_operations_Vecop2.mirrorBy = function(v,dir) {
	var dst = new iodev_geom2_Vec2();
	var nx;
	var ny;
	var m = 1.0 / Math.sqrt(dir.x * dir.x + dir.y * dir.y);
	nx = m * dir.x;
	ny = m * dir.y;
	var rx = ny;
	var ry = -nx;
	var m1 = -2. * (v.x * rx + v.y * ry);
	dst.x = v.x + m1 * rx;
	dst.y = v.y + m1 * ry;
	return dst;
};
iodev_geom2_operations_Vecop2.mirrorByNormal = function(v,ndir) {
	var dst = new iodev_geom2_Vec2();
	var rx = ndir.y;
	var ry = -ndir.x;
	var m = -2. * (v.x * rx + v.y * ry);
	dst.x = v.x + m * rx;
	dst.y = v.y + m * ry;
	return dst;
};
var iodev_geom2_tests_HitTest2 = function() { };
var iodev_geom2_tests_SpaceTest2 = function() { };
})(typeof console != "undefined" ? console : {log:function(){}}, typeof window != "undefined" ? window : exports);
