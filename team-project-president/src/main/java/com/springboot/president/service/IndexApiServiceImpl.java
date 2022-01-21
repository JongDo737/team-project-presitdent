package com.springboot.president.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.springframework.stereotype.Service;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.springboot.president.web.dto.IndexTableRespDto;

@Service
public class IndexApiServiceImpl implements IndexApiService {

	// 전역변수로 선언
	IndexTableRespDto totalRespDto = new IndexTableRespDto();

	@Override
	public IndexTableRespDto getIndexApiTotal() throws Exception {
		// 오늘 날짜 설정
		Calendar calendar = Calendar.getInstance();

		// 보기 불편하기 때문에 형식을 만들어서 사용할 수 있다.
		// 날짜로 변환 방법 지정
		DateFormat dateFormat = new SimpleDateFormat("MM.dd");
		// 현재 시간을 내가 정한 format 형식으로 변환
		String date = dateFormat.format(calendar.getTimeInMillis());
		// api 불러오는 함수 실행
		totalRespDto.setDate(date);
		getIndexApi2();
		getIndexApi3();
		
		// 천단위 콤마 찍기
		DecimalFormat f = new DecimalFormat("###,###");
		
		totalRespDto.setDeathCnt(f.format(Double.parseDouble((String)totalRespDto.getDeathCnt())));
		totalRespDto.setDecideCnt(f.format(Double.parseDouble((String)totalRespDto.getDecideCnt())));
		totalRespDto.setTodayFirstCnt(f.format(Double.parseDouble((String)totalRespDto.getTodayFirstCnt())));
		totalRespDto.setTodaySecondCnt(f.format(Double.parseDouble((String)totalRespDto.getTodaySecondCnt())));
		totalRespDto.setTotalFirstCnt(f.format(Double.parseDouble((String)totalRespDto.getTotalFirstCnt())));
		totalRespDto.setTotalSecondCnt(f.format(Double.parseDouble((String)totalRespDto.getTotalSecondCnt())));
		
		
		return totalRespDto;
	}

	// 코로나 19 세번째 테이블 불러오는 곳, Dto 삽입
	@Override
	public void getIndexApi3() throws Exception {
		StringBuilder urlBuilder = new StringBuilder(
				"http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19InfStateJson"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8")
				+ "=KoUHhFgcXAWFHvii7YKfxL2cdQMYE7j0dUoxZZXryPaJ9lz3HH463WOAopzv0XXAm66dHnxiUGjzj9Zk87ATCw%3D%3D"); /*
																													 * Service
																													 * Key
																													 */
		urlBuilder
				.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지번호 */
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "="
				+ URLEncoder.encode("10", "UTF-8")); /* 한 페이지 결과 수 */
		urlBuilder.append("&" + URLEncoder.encode("startCreateDt", "UTF-8") + "="
				+ URLEncoder.encode("20220120", "UTF-8")); /* 검색할 생성일 범위의 시작 */
		urlBuilder.append("&" + URLEncoder.encode("endCreateDt", "UTF-8") + "="
				+ URLEncoder.encode("20220120", "UTF-8")); /* 검색할 생성일 범위의 종료 */

		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
//        System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;

		// getResponseCode가 200이상 300이하일때는 정상적으로 작동합니다.
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
		url = null;
		// StringBuilder로 위에 파라미터 더 한값을 toString으로 불러옵니다.
		// 그리고 println으로 확인을 하면 xml형식이 나오게됩니다.
//        System.out.println(sb.toString());

		// 나중에 사용할 map을 선언해줍니다.
		Map<String, Object> map = new HashMap<String, Object>();

		List<HashMap<String, String>> list = getResultMap3(sb.toString());
		for (Map<String, String> tmpMap : list) {
			// 사망자 수
			map.put("deathCnt", tmpMap.get("deathCnt"));
			// 확진자수
			map.put("decideCnt", tmpMap.get("decideCnt"));
		}

		totalRespDto.setDeathCnt(map.get("deathCnt"));
		totalRespDto.setDecideCnt(map.get("decideCnt"));

	}

	// 3번째 테이블 xml 파일 사용
	@Override
	public List<HashMap<String, String>> getResultMap3(String data) throws Exception {

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

	// 코로나 19 두번째 테이블 불러오는 곳, Dto 삽입
	@Override
	public void getIndexApi2() throws Exception {
		StringBuilder urlBuilder = new StringBuilder("https://nip.kdca.go.kr/irgd/cov19stats.do?list=all"); /* URL */

		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
//		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;

		// getResponseCode가 200이상 300이하일때는 정상적으로 작동합니다.
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
		url = null;

		// StringBuilder로 위에 파라미터 더 한값을 toString으로 불러옵니다.
		// 그리고 println으로 확인을 하면 xml형식이 나오게됩니다.
//		System.out.println(sb.toString());

		// map을 사용하지않고 배열로 받아서 Dto에 담아주겠다.
		Object[] first = new Object[4];
		Object[] second = new Object[4];

		List<HashMap<String, String>> list = getResultMap2(sb.toString());
		int i = 0;
		for (Map<String, String> tmpMap : list) {
			first[i] = tmpMap.get("firstCnt");
			second[i] = tmpMap.get("secondCnt");
			i++;
		}

		// respDto에 삽입
		totalRespDto.setTodayFirstCnt(first[0]);
		totalRespDto.setTodaySecondCnt(second[0]);
		
		//전국민에 누적백신접종자로 퍼센트 내기
		String firstNum = String.format("%.1f", Double.parseDouble((String) first[2]) / 51846339*100);
		String secondNum = String.format("%.1f", Double.parseDouble((String) second[2]) / 51846339*100);
		
		totalRespDto.setTotalFirstPer(firstNum);
		totalRespDto.setTotalSecondPer(secondNum);

		totalRespDto.setTotalFirstCnt(first[2]);
		totalRespDto.setTotalSecondCnt(second[2]);

		totalRespDto.setSixtyFirstCnt(first[3]);
		totalRespDto.setSixtySecondCnt(second[3]);
		totalRespDto.setSixtytotal(
				((Double.parseDouble((String) first[3])) + (Double.parseDouble((String) second[3]))) / 2);

	}

	@Override
	public List<HashMap<String, String>> getResultMap2(String data) throws Exception {
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
