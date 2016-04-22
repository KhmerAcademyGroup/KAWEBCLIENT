package org.khmeracademy.app.controllers.scrap;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.khmeracademy.app.entities.YoutubeVideo;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/scrap")
public class ScrapController {

	@RequestMapping("/admin/videos")
	public ResponseEntity<Map<String , Object>> scrapVideosFromYotutube(){
		Map<String , Object> map = new HashMap<String, Object>();
		ArrayList<YoutubeVideo> arr = new ArrayList<YoutubeVideo>();
		YoutubeVideo youtubeVideo = null;
		try{
			Document doc = Jsoup.connect("https://www.youtube.com/playlist?list=PLWznN7ZS7n8U-tlROS8R5sYnXOSZZUrIx").get();
			Elements elementTitles = doc.select(".pl-video");
			StringBuilder data = new StringBuilder();
			String fullUrl = "";
			for(Element elementTitle : elementTitles){
				 fullUrl = elementTitle.select("a.pl-video-title-link").attr("href");
				
				System.out.println(elementTitle.select("a.pl-video-title-link").text());
				System.out.println(elementTitle.select("a.pl-video-title-link").attr("href").substring(fullUrl.indexOf("=")+1 ,   elementTitle.select("a.pl-video-title-link").attr("href").indexOf("&") ));
				System.out.println(elementTitle.select(".timestamp span").text()  );
				
//				youtubeVideo.setTitle(elementTitle.select("a.pl-video-title-link").text());
//				youtubeVideo.setVideoId(elementTitle.select("a.pl-video-title-link").attr("href").substring(fullUrl.indexOf("=")+1 ,   elementTitle.select("a.pl-video-title-link").attr("href").indexOf("&") ));
//				youtubeVideo.setDuration(elementTitle.select(".timestamp span").text() );
//				arr.add(youtubeVideo);
				
			}
			map.put("RESP_DATA", map);
		}catch(Exception exception){
			exception.printStackTrace();	
		}
		return new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
		
	}
	
}
