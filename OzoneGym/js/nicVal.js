function validateNIC() 
{
    var nic = document.getElementById('nic');
    var butt = document.getElementById('addemp');

    if (nic.length != 10) {
        alert("Length must be 14 characters");
        butt.disabled = false;
    }
    }