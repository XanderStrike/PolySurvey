function isRadioSelected(nme) {
    var isChecked = false;
    for(var i = 0; i < document.getElementsByName(nme).length; i++)
    {
        if(document.getElementsByName(nme)[i].checked == true){ return true; }
    }
    return false;
}

function isTextBoxRangeValid(nme) {
    //Check to make sure that they are numbers
    var txt = document.getElementsByName(nme)[0].value;
    /*
    if (txt == "") {
        return false;
    }
    */
    if (isNaN(txt)){
        return false;
    } else {
        if (txt < 0 || txt > 100) {
            return false;
        }
    }
    return true;
}

function getErrorText(question)
{
    return "Question " + question + " has not been answered yet.";
}