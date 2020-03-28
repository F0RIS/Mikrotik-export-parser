var data = `
add caller-id="" comment=0956365651 disabled=no limit-bytes-in=0 limit-bytes-out=0 name=Gorkogo18_33 password=7393620 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=Gorkogo2342 password=68297 profile=30MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo2722 password=14203 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pushkinskaya297_59 password=58455 profile=80m routes="" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Leningradskaya29_52 password=8390510 profile=80m routes="" service=pppoe
add caller-id="" comment=0501048586 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo2316 password=23744 profile=20MB routes="" \
    service=pppoe
`;

const NEEDED_FIELDS = {
    disabled: true,
    name: true,
    password: true,
    comment: true,
}

class Record {
    constructor(line) {
        line = line.replace("    ", "");
        var attrs = line.split(" ");
        for (let i = 0; i < attrs.length; i++) {
            const arr = attrs[i].split("=");
            var key = arr[0];
            var val = arr[1];
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
        return [this.name, this.password, this.comment].join(" ");
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
