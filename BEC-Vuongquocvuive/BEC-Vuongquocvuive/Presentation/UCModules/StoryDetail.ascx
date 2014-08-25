<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StoryDetail.ascx.cs" Inherits="BEC_Vuongquocvuive.Presentation.UCModules.StoryDetail" %>
<div id="book">
              <asp:Repeater ID="rptBia" runat="server">
                <ItemTemplate>
                    <div id="cover" style="background:url(data/images/<%# Eval("Story_Catalog")%>) no-repeat; background-position:center left"><img src="data/images/<%# Eval("Story_Catalog")%>"/></div>
                </ItemTemplate>
             </asp:Repeater>
              <asp:Repeater ID="rpReadStory" runat="server">
                <ItemTemplate>
                     <div style="background:url(data/images/<%# Eval("Page_ImagePath")%>) no-repeat; background-position:center left">
                	<a class="audio-item" href="data/audio/<%# Eval("Page_Audio")%>"></a>
                </div>
                <div style="background:url(data/images/<%# Eval("Page_ImagePath")%>) no-repeat; background-position:center right"></div>
                </ItemTemplate>
            </asp:Repeater>	
            </div>
          <div id="control-book">
            <ul>
              <li><a id='first'     href="#" title='Tới trang đầu tiên'   >First page</a></li>
              <li><a id='back'      href="#" title='Trang trước'  >Back</a></li>
              <li><a id='slideshow' href="#" title='Tự động chạy'  onclick="playPause()" >Slide Show</a></li>
              <li><a id='next'      href="#" title='Trang tiếp theo'>Next</a></li>
              <li><a id='last'      href="#" title='Tới trang cuối'    >last page</a></li>
            </ul>
            <asp:Repeater ID="rptSoundTrack" runat="server">
                <ItemTemplate>
                    <div id="media">
                        <audio id="audio-player"  type="audio/mpeg">
                         <source src="data/soundtrack/<%# Eval("Story_SoundTrack")%>" />
                         Your browser does not support the audio element. </audio>
                     </div>
                </ItemTemplate>
            </asp:Repeater>
            
</div>

<script>
    $(document).ready(function () {
        $('#audio-player').mediaelementplayer({
            alwaysShowControls: true,
            features: ['playpause', 'volume', 'progress'],
            audioVolume: 'horizontal',
            audioWidth: 48,
            audioHeight: 200
        });
    });
		</script>
          <script type="text/javascript">
              $(document).ready(function () {
                  $('#book').wowBook({
                      height: 560
				, width: 740
				, centeredWhenClosed: true
				, hardcovers: true
				, turnPageDuration: 1000
				, numberedPages: [1, -2]
				, controls: {
				    next: '#next',
				    back: '#back',
				    first: '#first',
				    last: '#last',
				    slideShow: '#slideshow',
				    slideShowDelay: 2000
				}
                  }).css({ 'display': 'none', 'margin': 'auto' }).fadeIn(1000);

                  $("#cover").click(function () {
                      $.wowBook("#book").advance();
                  });

              });
	</script> 
