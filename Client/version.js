var fs = require('fs');
var path = require('path');
var crypto = require('crypto');

var dest = './build/jsb-default/';
var url = 'http://mj.game1982.com/build/jsb-default/';

var destManifest = path.join(dest, 'project.manifest');
var destVersion = path.join(dest, 'version.manifest');


var manifest = {
    packageUrl: url,
    remoteManifestUrl: url + 'project.manifest',
    remoteVersionUrl: url + 'version.manifest',
    version: '0.0.0.1',
    assets: {},
    searchPaths: []
};


if (fs.existsSync(destVersion)) {
    console.log(data);
    var data = fs.readFileSync(destVersion);
    manifest = JSON.parse(data);
    manifest.assets = {};
    manifest.searchPaths = [];
    var version = 1 + parseInt(manifest.version.split('.').join(''));
    version = ("0000" + version).substr(-4);
    manifest.version = version.toString().split("").join('.');
}


console.log("manifest.version:" + manifest.version);

function readDir(dir, obj) {
    var stat = fs.statSync(dir);
    if (!stat.isDirectory()) {
        return;
    }
    var subpaths = fs.readdirSync(dir), subpath, size, md5, compressed, relative;
    for (var i = 0; i < subpaths.length; ++i) {
        if (subpaths[i][0] === '.') {
            continue;
        }
        subpath = path.join(dir, subpaths[i]);
        stat = fs.statSync(subpath);
        if (stat.isDirectory()) {
            readDir(subpath, obj);
        }
        else if (stat.isFile()) {
            // Size in Bytes
            size = stat['size'];
            md5 = crypto.createHash('md5').update(fs.readFileSync(subpath)).digest('hex');
            compressed = path.extname(subpath).toLowerCase() === '.zip';

            relative = path.relative(dest, subpath);
            relative = relative.replace(/\\/g, '/');
            relative = encodeURI(relative);
            obj[relative] = {
                'size': size,
                'md5': md5
            };
            if (compressed) {
                obj[relative].compressed = true;
            }
        }
    }
}

readDir(path.join(dest, 'src'), manifest.assets);
readDir(path.join(dest, 'res'), manifest.assets);


fs.writeFile(destManifest, JSON.stringify(manifest), (err) => {
    if (err) throw err;
    console.log('Manifest successfully generated');
});

delete manifest.assets;
delete manifest.searchPaths;
fs.writeFile(destVersion, JSON.stringify(manifest), (err) => {
    if (err) throw err;
    console.log('Version successfully generated');
});
