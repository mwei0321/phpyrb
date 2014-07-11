
var check_link = ''; //永远传值
function download(str, i, first) {
    var a = document.getElementsByName(str);
    var n = a.length;

    for (var i = i; i < n; i++) {
        if(a[i].checked) {
            window.location=a[i].value;
            if (first)
                timeout = 3000;
            else
                timeout = 500;
            i++;
            window.setTimeout("download('"+str+"', "+i+", 0)", timeout);
            break;
        }
    }

}

function copy(str) {
    
    var a = document.getElementsByName(str);
    var n = a.length;
    var ed2kcopy = "";
    for (var i = 0; i < n; i++) {
        if(a[i].checked) {
            ed2kcopy += a[i].value+"\r\n";
        }
    }
    copyToClipboard(ed2kcopy);
}

function copyToClipboard(txt) {
	if(window.clipboardData) {
   		window.clipboardData.clearData();
   		window.clipboardData.setData("Text", txt);
	} else if(navigator.userAgent.indexOf("Opera") != -1) {
		window.location = txt;
	} else if (window.netscape) {
		try {
			netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
		} catch (e) {
			alert("被浏览器拒绝！\n请在浏览器地址栏输入'about:config'并回车\n然后将'signed.applets.codebase_principal_support'设置为'true'");
		}
		var clip = Components.classes['@mozilla.org/widget/clipboard;1'].createInstance(Components.interfaces.nsIClipboard);
		if (!clip)
			return;
		var trans = Components.classes['@mozilla.org/widget/transferable;1'].createInstance(Components.interfaces.nsITransferable);
		if (!trans)
			return;
		trans.addDataFlavor('text/unicode');
		var str = new Object();
		var len = new Object();
		var str = Components.classes["@mozilla.org/supports-string;1"].createInstance(Components.interfaces.nsISupportsString);
		var copytext = txt;
		str.data = copytext;
		trans.setTransferData("text/unicode",str,copytext.length*2);
		var clipid = Components.interfaces.nsIClipboard;
		if (!clip)
			return false;
		clip.setData(trans,null,clipid.kGlobalClipboard);
	}
}

function em_size(str){
	var a = document.getElementsByName(str);
    var n = a.length;
    try {

        var size = 0;
        var input_checkall = document.getElementById("checkall_"+str);
        input_checkall.checked = true ;
        for (var i=0; i < n; i++) {
            if (a[i].checked) {
                var piecesArray = a[i].value.split( "|" );
                size += piecesArray[3]*1;
            } else {
                input_checkall.checked = false;
            }
        }

        test = document.getElementById("size_"+str);
        test.innerHTML = gen_size(size, 3, 1);
		if (eval("window.document.ed2kcopy_"+str)) {
			eval("window.document.ed2kcopy_"+str).send2flash(getEd2k(str));
		}
    } catch (e) {
		//alert("e"+e.message)
    }
}

function gen_size(val, li, sepa ) {
    sep = Math.pow(10, sepa); //小数点后的位数
    li = Math.pow(10, li); //开始截断的长度
    retval  = val;
    unit    = 'Bytes';
    if (val >= li*1000000000) {
        val = Math.round( val / (1099511627776/sep) ) / sep;
        unit  = 'TB';
    } else if (val >= li*1000000) {
        val = Math.round( val / (1073741824/sep) ) / sep;
        unit  = 'GB';
    } else if (val >= li*1000) {
        val = Math.round( val / (1048576/sep) ) / sep;
        unit  = 'MB';
    } else if (val >= li) {
        val = Math.round( val / (1024/sep) ) / sep;
        unit  = 'KB';
    }
    return val + unit;
}

