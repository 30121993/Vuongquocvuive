using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;

namespace BLL
{
    public class AlbumBLL
    {
        AlbumDAL _album = new AlbumDAL();
        public DataTable KiemTraAvt(AlbumDTO obj)
        {
            return _album.KiemTraAvt(obj);
        }
        public bool ChangeAvt(AlbumDTO obj)
        {
            return _album.ChangeAvt(obj);
        }
        public DataTable GetDataByUser(int ID)
        {
            return _album.GetDataByUser(ID);
        }
    }
}
