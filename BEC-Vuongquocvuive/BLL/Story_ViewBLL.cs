using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;

namespace BLL
{
    public class Story_ViewBLL
    {
        Story_ViewDAL _story = new Story_ViewDAL();
        public Boolean Insert(Story_ViewDTO obj)
        {
            return _story.Insert(obj);
        }
        public DataTable Kiemtratrung(Story_ViewDTO obj)
        {
            return _story.Kiemtratrung(obj);
        }
    }
}
