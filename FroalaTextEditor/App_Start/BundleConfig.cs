using System.Web;
using System.Web.Optimization;

namespace FroalaTextEditor
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/froala-editor/js/plugins/align.min.js",
                      "~/Scripts/FroalaEditor.js", 
                      "~/Scripts/froala-editor/js/plugins/code_view.min.js",
                      "~/Scripts/froala-editor/js/froala_editor.min.js",
                      "~/Scripts/froala-editor/js/plugins/code_beautifier.min.js",
                      "~/Scripts/froala-editor/js/plugins/table.min.js",
                      "~/Scripts/froala-editor/js/plugins/colors.min.js",
                      "~/Scripts/jquery-3.4.1.min.js",
                      "~/Scripts/froala-editor/js/plugins/draggable.min.js",
                      "~/Scripts/froala-editor/js/plugins/emoticons.min.js",
                      "~/Scripts/froala-editor/js/plugins/entities.min.js"
                      ,"~/Scripts/froala-editor/js/plugins/edit_in_popup.min.js",
                      "~/Scripts/froala-editor/js/plugins/fullscreen.min.js",
                      "~/Scripts/froala-editor/js/plugins/file.min.js",
                      "~/Scripts/froala-editor/js/plugins/font_family.min.js",
                      "~/Scripts/froala-editor/js/plugins/font_size.min.js",
                      "~/Scripts/froala-editor/js/plugins/forms.min.js",
                      "~/Scripts/froala-editor/js/plugins/help.min.js",
                      "~/Scripts/froala-editor/js/plugins/char_counter.min.js",
"~/Scripts/froala-editor/js/plugins/image.min.js",
"~/Scripts/froala-editor/js/plugins/image_manager.min.js",
"~/Scripts/froala-editor/js/plugins/inline_class.min.js",
"~/Scripts/froala-editor/js/plugins/inline_style.min.js",
"~/Scripts/froala-editor/js/plugins/line_breaker.min.js",
"~/Scripts/froala-editor/js/plugins/link.min.js",
"~/Scripts/froala-editor/js/plugins/line_height.min.js",
"~/Scripts/froala-editor/js/plugins/lists.min.js",
"~/Scripts/froala-editor/js/plugins/paragraph_style.min.js",
"~/Scripts/froala-editor/js/plugins/print.min.js",
"~/Scripts/froala-editor/js/plugins/quick_insert.min.js",
"~/Scripts/froala-editor/js/plugins/quote.min.js",
"~/Scripts/froala-editor/js/plugins/save.min.js",
"~/Scripts/froala-editor/js/plugins/special_characters.min.js",
"~/Scripts/froala-editor/js/plugins/table.min.js",
"~/Scripts/froala-editor/js/plugins/url.min.js",
"~/Scripts/froala-editor/js/plugins/video.min.js",
"~/Scripts/froala-editor/js/plugins/word_paste.min.js",






                      "~/Scripts/FroalaEditor.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Scripts/froala-editor/css/froala_style.min.css",
                      "~/Scripts/froala-editor/css/plugins/draggable.min.css",
                      "~/Scripts/froala-editor/css/plugins/fullscreen.min.css",
                      "~/Scripts/froala-editor/css/plugins/colors.min.css",
                      "~/Scripts/froala-editor/css/plugins/line_breaker.min.css",
                      "~/Scripts/froala-editor/css/plugins/image_manager.min.css",
                      "~/Scripts/froala-editor/css/plugins/quick_insert.min.css",
                      "~/Scripts/froala-editor/css/plugins/special_characters.min.css",
                      "~/Scripts/froala-editor/css/plugins/image.min.css",
                      "~/Scripts/froala-editor/css/plugins/file.min.css",
                      "~/Scripts/froala-editor/css/plugins/emoticons.min.css",
                      "~/Scripts/froala-editor/css/plugins/code_view.min.css",
                      "~/Scripts/froala-editor/css/plugins/table.min.css",
                      "~/Scripts/froala-editor/css/froala_editor.pkgd.min.css"
                      ,"~/Scripts/froala-editor/css/plugins/char_counter.min.css",
                      "~/Scripts/froala-editor/css/plugins/table.min.css",
                      "~/Scripts/froala-editor/css/froala_editor.min.css",
                      "~/Content/FroalaStyling.css",
                      "~/Content/site.css"));
        }
    }
}
