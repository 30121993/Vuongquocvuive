using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
    public class StoryBLL
    {
        StoryDAL _story = new StoryDAL();
        public DataTable GetStoryByID(int Story_ID)
        {
            return _story.GetStoryByID(Story_ID);
        }
        public DataTable LoadStoryNew()
        {
            return _story.LoadStoryNew();
        }
        public DataTable LoadStoryDocNhieu()
        {
            return _story.LoadStoryDocNhieu();
        }
        public DataTable GetStoryByCatalog(int Catalog_ID)
        {
            return _story.GetStoryByCatalog(Catalog_ID);
        }
        public Boolean viewup(int id)
        {
            return _story.viewup(id);
        }
        public DataTable GetStoryUserView(int ID)
        {
            return _story.GetStoryUserView(ID);
        }
    }
}
