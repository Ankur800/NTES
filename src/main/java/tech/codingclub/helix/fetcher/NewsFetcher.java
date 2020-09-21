package tech.codingclub.helix.fetcher;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import tech.codingclub.helix.entity.News;
import tech.codingclub.helix.global.HttpURLConnectionExample;

import java.util.ArrayList;

public class NewsFetcher {

    public static ArrayList<News> fetchRecentNews() throws Exception {
        ArrayList<News> allNews = new ArrayList<News>();

        String link = "https://indiarailinfo.com/news";
        String responseHTML = HttpURLConnectionExample.sendGet(link);

        Document document = Jsoup.parse(responseHTML, "https://indiarailinfo.com");

        Elements allData = document.body().select(".blogheader");

        for(Element newsData : allData){
            News news = new News();

            String rawData = newsData.text();
            String[] newsDataList = rawData.split(" ", 2);
            news.day = newsDataList[0];

            String[] newsDataListForTime = newsDataList[1].split("\\)", 2);
            news.time = newsDataListForTime[0].substring(1, newsDataListForTime[0].length());

            String[] newsDataForNews = newsDataListForTime[1].split("\\(");
            news.news = newsDataForNews[0];

            allNews.add(news);
        }
        return allNews;
    }

}
