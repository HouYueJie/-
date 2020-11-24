(function ($) {

    $.fn.tagInput = function (destValue) {

        $(this).each(function () {
            var tagThat = $('<div class="tags_input clearfix" id="tags_div"><input class="tags_input_key" placeholder="输入内容按回车" type="text" />' +
                    '</div>');

            $(this).before(tagThat);
            $(this).addClass('tags_value');
            tagThat.append(this);
            function appendTags(tag , obj){
                $(obj).before('<div class="tagsbox" contenteditable="false"><span class="tagstext">'+tag+'</span><span class="close" onclick="$(this).parents(\'.tagsbox\').remove()"></span></div>')
                $(obj).val('');
                $(obj).focus();
                updateTags();
            }

            function updateTags()
            {
                var ret = [];
                $(tagThat).find('.tagsbox').each(function () {
                    var text = $(this).find('.tagstext').text();
                    ret.push(text);
                });
                $(tagThat).find('.tags_value').val(ret.join(','));
            }
            $(tagThat).click(function (e) {
                $(this).find('.tags_input_key').focus();
            });
            $(tagThat).on('click','.tagsbox',function (e) {
                e.stopPropagation();
                e.preventDefault();
                return false;
            })
            $(tagThat).find('input.tags_input_key').keydown(function (e) {
                if(e.keyCode == 13){
                    e.preventDefault();
                    var html = $(this).val();
                    appendTags($.trim(html) , this);
                    return false;
                }
            });
            var val = $(tagThat).find('.tags_value').val();
            if(val!=''){
                $(function () {
                    var vals = val.split(',');
                    var obj = $(this).find('input.tags_input_key');
                    $.each(vals , function () {
                        appendTags(this,obj);
                    });
                });
            }
        });
    };
})(jQuery);