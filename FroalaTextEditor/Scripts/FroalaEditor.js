
console.log("hello");

var editor = new FroalaEditor('#example', {
    imageUploadURL: 'FroalaApi/UploadImage',

    imageUploadParams: {
        id: 'my_editor'
    },
    events: {
        'image.beforeUpload': function (images) {
            // Return false if you want to stop the image upload.
            console.log(images);
        },
        'image.replaced': function ($img, response) {
            // Image was replaced in the editor.
        },
        'image.removed': function ($img) {

            $.ajax({
                type: "POST",
                url: '/FroalaApi/DeleteFile',
                data: "{ '_oldsrc':'" + $img.attr("src") + "' }",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                },
                failure: function (response) {
                    console.log('' + response.responseText);

                },

                error: function (response) {

                    console.log('' + response.responseText);
                }
            });


        }

    }
    , imageManagerLoadURL: "FroalaApi/LoadImages",
    // Set the load images request type
    imageManagerLoadMethod: "POST",
    // Set page size
    imageManagerPageSize: 20,
    // Set a scroll offset (value in pixels)
    imageManagerScrollOffset: 10
});