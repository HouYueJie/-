

// 显示的字段
function searchSelect(id , table , keyword , where , fields,ext , callback) {
    where = where || {};
    if(keyword && keyword != ''){
        console.log(fields , ext);
        var fs = ext && $.isArray(ext) ? fields.concat(ext) : fields;
        console.log(fs);
        where[fs.join('|')] = ['like' , "%"+keyword+"%"];
    }

    $.post( window.searchSelectUrl , {
        table:table,
        where:JSON.stringify(where)
    },function (res) {
        var sel = document.getElementById(id);
        sel.length = 1;
        sel.selectedIndex = 0;
        $.each(res , function (index,obj) {
            var option = document.createElement('option');
            option.value = obj.id;
            var text = [];
            $.each(fields , function (i , o) {
                text.push(obj[o]);
            });
            option.text = text.join(" - ");
            sel.options.add(option);
        });
        callback && callback(res);

    },'json');
}


function getAjaxData(table, destId, fields) {
    fields = $.isArray(fields) ? fields : fields.split(",")
    if (!destId || destId == "") {
        $.each(fields, function (i, name) {
            $("#" + name).val("");
        })
        return;
    }
    $.get(window.selectUpdateUrl /*"tableAjax.do?a=table"*/ , {table: table, id: destId}, function (res) {
        $.each(fields, function (i, name) {
            if (res[name]) {
                $("#" + name).val(res[name]);
            }
        })
    }, "json");
}


function setFieldData(fields , res) {
    fields = $.isArray(fields) ? fields : fields.split(",")
    $.each(fields, function (i, name) {
        if (res[name]) {
            $("#" + name).val(res[name]);
        }
    });
}



