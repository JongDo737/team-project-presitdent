package com.springboot.president.web.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.swing.text.Document;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.springboot.president.web.dto.IndexTable3RespDto;

@RestController
public class IndexController {

	@GetMapping("/index/apiTest")
	public Object apiTest() throws Exception{
		StringBuilder urlBuilder = new StringBuilder("http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19InfStateJson"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=KoUHhFgcXAWFHvii7YKfxL2cdQMYE7j0dUoxZZXryPaJ9lz3HH463WOAopzv0XXAm66dHnxiUGjzj9Zk87ATCw%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("startCreateDt","UTF-8") + "=" + URLEncoder.encode("20220119", "UTF-8")); /*검색할 생성일 범위의 시작*/
        urlBuilder.append("&" + URLEncoder.encode("endCreateDt","UTF-8") + "=" + URLEncoder.encode("20220119", "UTF-8")); /*검색할 생성일 범위의 종료*/
         
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
         
        //getResponseCode가 200이상 300이하일때는 정상적으로 작동합니다.
        if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
         
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        url =null;
        //StringBuilder로 위에 파라미터 더 한값을 toString으로 불러옵니다.
        //그리고 println으로 확인을 하면 xml형식이 나오게됩니다.
        System.out.println(sb.toString());
         
         
        //나중에 사용할 map을 선언해줍니다.
        Map<String, Object> map = new HashMap<String, Object>();
         
        List<HashMap<String, String>> list = getResultMap(sb.toString());
        for(Map<String,String> tmpMap : list) {
            map.put("deathCnt", tmpMap.get("deathCnt"));
            map.put("decideCnt", tmpMap.get("decideCnt"));
            map.put("seq", tmpMap.get("seq"));
        }
        System.out.println(map);
        return null;
         
	}
	public static List<HashMap<String, String>> getResultMap(String data) throws Exception {

		// 결과값을 넣어줄 map을 선언해줍니다.
		List<HashMap<String, String>> resultMap = new LinkedList<HashMap<String, String>>();

		InputSource is = new InputSource(new StringReader(data));

		// Document 클래스로 xml데이터를 취득합니다.
		org.w3c.dom.Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(is);

		// xPath 팩토리로 객체를 만듭니다.
		XPath xpath = XPathFactory.newInstance().newXPath();

		// xPath를 컴파일한 후에 node단위로 데이터를 수집합니다.
		NodeList nodeList = (NodeList) xpath.compile("/response/body/items/item").evaluate(document,
				XPathConstants.NODESET);
		int nodeListCount = nodeList.getLength();
		for (int i = 0; i < nodeListCount; i++) {
			NodeList childNode = nodeList.item(i).getChildNodes();
			HashMap<String, String> nodeMap = new HashMap<String, String>();
			int childNodeCount = childNode.getLength();
			for (int j = 0; j < childNodeCount; j++) {
				nodeMap.put(childNode.item(j).getNodeName(), childNode.item(j).getTextContent());
			}
			resultMap.add(nodeMap);
		}

		return resultMap;
	}

}