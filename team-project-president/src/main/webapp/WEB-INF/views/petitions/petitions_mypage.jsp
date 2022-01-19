<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/petitions_mypage.css">
</head>

<body>
    <section class="petitions_head">
        <div class="petitions_head_txt">
            <h2 class="head_text_title">
                ����û��
            </h2>
        </div>
    </section>
    <div class="contents_tab">
        <div class="contents_tab_li"><a href="#" class="tab_menu">�оߺ� û��</a></div>
        <div class="contents_tab_li"><a href="#" class="tab_menu" id="tab_center">��õ�� û��</a></div>
        <div class="contents_tab_li"><a href="#" class="tab_menu">�亯�� û��</a></div>
    </div>
    <div class="mypage_area">
        <!-- �� û�� ���� -->
        <div class="mypage_head">
            <h3 class="mypage_head_title">
                �� <span>û�� </span>����
            </h3>
        </div>
        <div class="mypage_body">
            <div class="mypage_text_info">
                <ul>
                    <li>û���� �ۼ� �� 30�� ���� 100���� �������Ǹ� ���� û���� û�� �Խ��ǿ� �����˴ϴ�.</li>
                    <li>�Ʒ� <span>�������� URL ����</span> ��ũ�� ���ؼ��� �������ǰ� �����մϴ�.</li>
                    <li>100���� �������Ǹ� ���� ����, <span>û����ǿ� ���� �ʴ� ���</span> û�� �Խ��ǿ� �������� ���� �� �ֽ��ϴ�.</li>
                </ul>
            </div>
            <div class="mypage_list">
                <div class="mypage_list_title">
                    <h4>���� �ۼ��� û��</h4>
                </div>
                <div class="mypage_list_container">
                    <div class="mypage_list_category">
                        <div class="list_category_status">�����Ȳ</div>
                        <div class="list_category_classification">�з�</div>
                        <div class="list_category_title">����</div>
                        <div class="list_category_date">û���Ⱓ</div>
                        <div class="list_category_participants">�����ο�</div>
                        <div class="list_category_url">URL</div>
                    </div>
                    <div class="mypage_list_contents">
                        <div class="mypage_contents_empty">�ۼ��� û������ �����ϴ�.</div>
                        <div class="mypage_contents_main">
                            <ul>
                                <li>
                                    <div class="mypage_mylist" id="mylist_status"> <span>�������� ������</span></div>
                                    <div class="mypage_mylist" id="mylist_classification"><span>����/ȯ��</span></div>
                                    <div class="mypage_mylist" id="mylist_title">
                                        <a href="#">
                                            <span>�ڷγ� 3�� ��� ���� ���Ǿ�</span>
                                        </a>
                                    </div>
                                    <div class="mypage_mylist" id="mylist_date">
                                        <span>22-01-18 ~ 22-02-17</span>

                                    </div>
                                    <div class="mypage_mylist" id="mylist_participants">
                                        <span>0��</span>
                                    </div>
                                    <div class="mypage_mylist" id="mylist_url">
                                        <a href="#">URL ����</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="mypage_logout_btn">
                    <a href="#" id="mypage_logout">�α׾ƿ�</a>
                </div>
            </div>
        </div>
        <!--  -->
    </div>

</body>

</html>