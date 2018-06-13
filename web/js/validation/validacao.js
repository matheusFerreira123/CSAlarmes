jQuery.validator.addMethod("temArroba", function (value, element) {
    if (value.indexOf("@") >= 0) {
        return true
    } else {
        return false
    }
}, "Digite um @")


