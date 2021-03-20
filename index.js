var data = `
add caller-id="" comment="11 22 33" disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo13_54 password=75746 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0506456035 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Pushkinskaya297_46 password=84179 profile=80m \
    routes="" service=pppoe
`;

var EExportType = {
    SIMPLE_CSV: 1,
    GOOGLE_CSV: 2, //https://contacts.google.com/
    SET_COMMENT_COMMAND: 3 //mikrotik script to update comments (phones)
}

var EXPORT_TYPE = EExportType.SIMPLE_CSV;

const NEEDED_FIELDS = {
    disabled: true,
    name: true,
    password: true,
    comment: true,
}

const SEPARATOR = ",";

var STREETS = {
    "Belousova": "Бел",
    "Trudovaya": "Труд",
    "Shevchenko": "Шевч",
    "Pushkinskaya": "Пушк",
    "Pugacheva": "Пугач",
    "Proletarskaya": "Прол",
    "Petrovskogo": "Петр",
    "Pervomayskaya": "Перв",
    "Oktyabrskaya": "Окт",
    "Leningradskaya": "Лен",
    "Kuznechnaya": "Кузн",
    "International": "Инт",
    "Gorkogo": "Гор",
}

class Record {
    constructor(line) {
        line = line.replace("    ", "");
        var attrs = line.split(" ");
        for (let i = 0; i < attrs.length; i++) {
            const arr = attrs[i].split("=");
            var key = arr[0];
            var val = arr[1];

            if (val && val.charAt(0) == '"') { //value in quotes
                while (attrs[i + 1].indexOf("=") == -1) {
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
    toCSV() {
        return [this.name, this.password, this.comment].join(SEPARATOR);
    }
    toGoogleContactsCSV() {
        var name = this.name.replace("_", "-");
        for (var key in STREETS) {
            if (name.includes(key)) {
                name = name.replace(key, STREETS[key]);
            }
        }
        var res = `${name},,,,,,,,,,,,,,,,,,,,,,,,,,,,* myContacts`;
        var phones = this.comment.split(" ");
        phones.forEach(item => res += `,Mobile,${item}`)
        return res;
    }
    toSetCommentCommand() {
        return `set ${this.name} comment=${this.comment}`;
    }
}

function parse(data) {

    var arr = data.split("\n");
    var res = [];

    for (var i = 0; i < arr.length; i++) {
        var line = arr[i];
        if (line.length != 0) {
            var rec = new Record(line);

            switch (EXPORT_TYPE) {
                case EExportType.SIMPLE_CSV:
                    if (!rec.disabled) {
                        res.push(rec.toCSV())
                    }
                    break;
                case EExportType.GOOGLE_CSV:
                    if (rec.comment) { //to create csv for import in google contacts
                        res.push(rec.toGoogleContactsCSV())
                    }
                    break;
                case EExportType.SET_COMMENT_COMMAND:
                    if (rec.comment) { //to create commands to update comments
                        res.push(rec.toSetCommentCommand())
                    }
                    break;
            }
        }
    }


    switch (EXPORT_TYPE) {
        case EExportType.SIMPLE_CSV:
            break;
        case EExportType.GOOGLE_CSV:
            var str = "Name,Given Name,Additional Name,Family Name,Yomi Name,Given Name Yomi,Additional Name Yomi,Family Name Yomi,Name Prefix,Name Suffix,Initials,Nickname,Short Name,Maiden Name,Birthday,Gender,Location,Billing Information,Directory Server,Mileage,Occupation,Hobby,Sensitivity,Priority,Subject,Notes,Language,Photo,Group Membership,Phone 1 - Type,Phone 1 - Value,Phone 2 - Type,Phone 2 - Value";
            console.log(str);
            break;
        case EExportType.SIMPLE_CSV:
            var str = `#To update comments for some users copy paste next commands to terminal\n/ppp secret`;
            console.log(str);
            break;
    }

    res.forEach(item => console.log(item));
}

parse(data);
