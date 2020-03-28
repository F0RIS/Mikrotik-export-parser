var data = `
add caller-id="" comment="11 22 33" disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo13_54 password=75746 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0506456035 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Pushkinskaya297_46 password=84179 profile=80m \
    routes="" service=pppoe
`;

const NEEDED_FIELDS = {
    disabled: true,
    name: true,
    password: true,
    comment: true,
}

const SEPARATOR = ",";

class Record {
    constructor(line) {
        line = line.replace("    ", "");
        var attrs = line.split(" ");
        for (let i = 0; i < attrs.length; i++) {
            const arr = attrs[i].split("=");
            var key = arr[0];
            var val = arr[1];
            
            if (val && val.charAt(0) == '"') { //value in quotes
                while(attrs[i + 1].indexOf("=") == -1) {
                    val += " " + attrs[i + 1];
                    val = val.replace(/"+/g, "")
                    i++;
                }
            }
            // console.log({key, val});
            if (NEEDED_FIELDS[key]) {
                if (key == "disabled") {
                    this[key] = val == "yes";
                } else {
                    this[key] = val;
                }
            }
        }
    }
    toString() {
        return [this.name, this.password, this.comment].join(SEPARATOR);
    }
}

function parse(data) {

    var arr = data.split("\n");
    var res = [];

    for (var i = 0; i < arr.length; i++) {
        var line = arr[i];
        if (line.length != 0) {
            var rec = new Record(line);
            if (!rec.disabled) {
                res.push(rec.toString())
            }
        }
    }

    res.forEach(item => console.log(item));
}

parse(data);
