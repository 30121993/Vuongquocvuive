using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using DTO;
namespace DAL
{
    public class StoryDAL
    {
        clsDbaccess cls = new clsDbaccess();
        public List<SqlParameter> listparam = new List<SqlParameter>();
        public DataTable GetStoryByID(int Story_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("Story_ID", Story_ID));
            return cls.truyvansqlcothamso("Story_SelectByID", listparam);
        }
        public DataTable LoadStoryNew()
        {
            return cls.getdata("Story_New");
        }
        public DataTable LoadStoryDocNhieu()
        {
            return cls.getdata("Story_TopRead");
        }
        public DataTable GetStoryByCatalog(int Catalog_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("Catalog_ID", Catalog_ID));
            return cls.truyvansqlcothamso("Story_GetAllByCatalogID", listparam);
        }
        public Boolean viewup(int id)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("Story_ID", id));
            return cls.capnhatdulieu("UpdateView", listparam);
        }
        public DataTable GetStoryUserView(int ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", ID));
            return cls.truyvansqlcothamso("User_ReadStory", listparam);
        }

        public DataTable StoryGetAll()
        {
            return cls.getdata("Story_SelectAll");
        }
        public Boolean DeleteStory(int ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("Story_ID", ID));
            return cls.capnhatdulieu("Story_Delete", listparam);
        }

        public int InsertStory(StoryDTO obj)
        { 
            listparam.Clear();
            listparam.Add(new SqlParameter("@Catalog_ID",obj.Catalog_ID));       
            listparam.Add(new SqlParameter("@Story_Name",obj.Story_Name));       
            listparam.Add(new SqlParameter("@Story_Catalog",obj.Story_Catalog));       
            listparam.Add(new SqlParameter("@Story_SoundTrack",obj.Story_SoundTrack));       
            listparam.Add(new SqlParameter("@Story_Status",obj.Story_Status));      
            listparam.Add(new SqlParameter("@Story_TimeUp",obj.Story_TimeUp));       
            listparam.Add(new SqlParameter("@Story_Creater",obj.Story_Creater));        
            listparam.Add(new SqlParameter("@Story_Price",obj.Story_Price));        
            listparam.Add(new SqlParameter("@Story_TotalView",obj.Story_TotalView));        
            listparam.Add(new SqlParameter("@Story_State",obj.Story_State));        
            listparam.Add(new SqlParameter("@Story_StatePrice",obj.Story_StatePrice));
            listparam.Add(new SqlParameter("@Story_LastEdit", obj.Story_LastEdit));
            return cls.CapnhatdulieureturnID("Story_Insert", listparam);
        }
    }
}
