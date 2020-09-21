package tech.codingclub.helix.fetcher;

import tech.codingclub.helix.global.HttpURLConnectionExample;

public class NewsFetcher {

    public static void fetchRecentNews() throws Exception {
        String link = "https://indiarailinfo.com/news";
        String responseHTML = HttpURLConnectionExample.sendGet(link);

        System.out.println(responseHTML);
    }

    public static void main(String[] args) throws Exception {
        fetchRecentNews();
    }

}
