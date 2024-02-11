using System;
using System.Web.Mvc;
using ImageMagick;
using FroalaEditor;
using System.Web;
using System.IO;
using System.Linq;
using System.Collections;
using Newtonsoft.Json;
using System.Collections.Generic;

namespace demo.Controllers
{
    public class FroalaApiController : Controller
    {
        public ActionResult UploadImage()
        {
            if (Request.Files["file"] != null)
            {
                HttpPostedFileBase _MyFile = Request.Files["file"];

                // Setting location to upload files
                string _TargetLocation = Server.MapPath("~/Files/");


                try
                {
                    if (_MyFile.ContentLength > 0)
                    {
                        // Get File Extension
                        string _Extension = Path.GetExtension(_MyFile.FileName);

                        // Determining file name. You can format it as you wish.
                        string _FileName = Path.GetFileName(_MyFile.FileName);
                        _FileName = Guid.NewGuid().ToString().Substring(0, 8);

                        // Determining file size.
                        int _FileSize = _MyFile.ContentLength;

                        // Creating a byte array corresponding to file size.
                        byte[] _FileByteArray = new byte[_FileSize];

                        // Basic validation for file extension
                        string[] _AllowedExtension = { ".gif", ".jpeg", ".jpg", ".png", ".svg", ".blob" };
                        string[] _AllowedMimeType = { "image/gif", "image/jpeg", "image/pjpeg", "image/x-png", "image/png", "image/svg+xml" };

                        if (_AllowedExtension.Contains(_Extension) && _AllowedMimeType.Contains(MimeMapping.GetMimeMapping(_MyFile.FileName)))
                        {
                            // Posted file is being pushed into byte array.
                            _MyFile.InputStream.Read(_FileByteArray, 0, _FileSize);

                            // Uploading properly formatted file to server.
                            _MyFile.SaveAs(_TargetLocation + _FileName + _Extension);
                            string json = "";
                            Hashtable resp = new Hashtable();
                            string urlPath = MapURL(_TargetLocation) +_FileName + _Extension;

                            // Make the response an json object
                            resp.Add("link", urlPath);
                            json = JsonConvert.SerializeObject(resp);

                            // Clear and send the response back to the browser.
                            Response.Clear();
                            Response.ContentType = "application/json; charset=utf-8";
                            Response.Write(json);
                            Response.End();
                        }
                        else
                        {
                            // Handle validation errors
                        }
                    }
                }

                catch (Exception ex)
                {
                    // Handle errors
                }
            }
            return View();
        }

        public ActionResult LoadImages()
        {
            string[] _FileArray = Directory.GetFiles(Server.MapPath("~/Files/"));
            List<object> _JsonListFiles = new List<object>();
            foreach (var _item in _FileArray)
            {
                _JsonListFiles.Add(new
                {
                    name = _item.Substring(_item.LastIndexOf("\\") + 1),
                    url = "Files/"+Path.GetFileName(_item),
                    thumb = "Files/" + Path.GetFileName(_item),
                    tag = "uploadedImages/admin"
                });
            }

           
            return Json(_JsonListFiles,JsonRequestBehavior.AllowGet);
        }


        public ActionResult DeleteFile(string _oldsrc)
        {
            try
            {
                
                var fullPath = Server.MapPath("~/"+_oldsrc);

                if (System.IO.File.Exists(fullPath))
                {
                    System.IO.File.Delete(fullPath);
                    ViewBag.deleteSuccess = "true";
                }
                return Content(_oldsrc);
            }
            catch (Exception e)
            {
                return Json(e);
            }
        }
        private string MapURL(string path)
        {
            string appPath = Server.MapPath("/").ToLower();
            return string.Format("/{0}", path.ToLower().Replace(appPath, "").Replace(@"\", "/"));
        }
    }
}