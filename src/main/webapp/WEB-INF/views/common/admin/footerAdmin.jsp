<script>
    $(document).ready(function () {
        const cbAll = $("#cb-all");
        /**check box all*/
        cbAll.click(function () {
            if (cbAll.prop('checked')) {
                $.each($('.cb-one'), function () {
                    $(this).prop('checked', true)
                });
            } else {
                $.each($('.cb-one'), function () {
                    $(this).prop('checked', false)
                });
            }
        });

        /**check box one*/


    });
</script>