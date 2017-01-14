using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OffCampusHousing
{
    public partial class maps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


                // Here I used Degha Location as Main Location and Lat Long is : 21.622564, 87.523417
                GLatLng mainLocation = new GLatLng(32.925683, -96.957736);
                GMap1.setCenter(mainLocation, 15);

                XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "A", Color.Red, Color.White, Color.Chocolate);
                GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

                //List<gmap> hotels = new List<gmap>();
                //using (mapsEntities dc = new mapsEntities())
                ////string constr = ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString;
                ////using (SqlConnection con = new SqlConnection(constr))
                //{

                //    hotels = dc.gmaps.Where(a => a.Area.Equals("Irving")).ToList();
                //}

                //PinIcon p;
                //GMarker gm;
                //GInfoWindow win;
                //foreach (var i in hotels)
                //{

                //    p = new PinIcon(PinIcons.restaurant, Color.Silver);
                //    gm = new GMarker(new GLatLng(Convert.ToDouble(i.LocLat), Convert.ToDouble(i.LocLong)),
                //        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
                //    win = new GInfoWindow(gm, i.Name + " <a href='" + i.ReadUrl + "'>Read more...</a>", false, GListener.Event.mouseover);
                //    GMap1.Add(win);
                //}
            }
        }

        protected void cbHotel_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnHotels_Click(object sender, EventArgs e)
        {
        
            
                List<gmap> hotels = new List<gmap>();
                using (mapsEntities dc = new mapsEntities())
                //string constr = ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString;
                //using (SqlConnection con = new SqlConnection(constr))
                {

                    hotels = dc.gmaps.Where(a => a.Type.Equals("Restaurent")).ToList();
                }

                PinIcon p;
                GMarker gm;
                GInfoWindow win;
                foreach (var i in hotels)
                {

                    p = new PinIcon(PinIcons.restaurant, Color.Silver);
                    gm = new GMarker(new GLatLng(Convert.ToDouble(i.LocLat), Convert.ToDouble(i.LocLong)),
                        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
                    win = new GInfoWindow(gm, i.Name + " <a href='" + i.ReadUrl + "'>Read more...</a>", false, GListener.Event.mouseover);
                    GMap1.Add(win);
               

            }
        }

        protected void btnGrocery_Click(object sender, EventArgs e)
        {
          
            

                List<gmap> hotels = new List<gmap>();
                using (mapsEntities dc = new mapsEntities())
                //string constr = ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString;
                //using (SqlConnection con = new SqlConnection(constr))
                {

                    hotels = dc.gmaps.Where(a => a.Type.Equals("Grocery")).ToList();
                }

                PinIcon p;
                GMarker gm;
                GInfoWindow win;
                foreach (var i in hotels)
                {

                    p = new PinIcon(PinIcons.shoppingcart, Color.DarkOrange);
                    gm = new GMarker(new GLatLng(Convert.ToDouble(i.LocLat), Convert.ToDouble(i.LocLong)),
                        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
                    win = new GInfoWindow(gm, i.Name + " <a href='" + i.ReadUrl + "'>Read more...</a>", false, GListener.Event.mouseover);
                    GMap1.Add(win);
                }
            }
        }
    }
