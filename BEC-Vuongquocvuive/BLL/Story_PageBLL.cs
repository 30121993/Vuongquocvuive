using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
    public class Story_PageBLL
    {
        Story_PageDAL _Story_Page = new Story_PageDAL();
        public DataTable ReadStory(int Story_ID)
        {
            return _Story_Page.ReadStory(Story_ID);
        }
    }
}
