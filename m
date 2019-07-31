Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C367C8CA
	for <lists+openwrt-devel@lfdr.de>; Wed, 31 Jul 2019 18:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UCrkiJZL7r6cGx6n1tBMYycWYLjhzvc56qDJ5g/6bfs=; b=ewp
	uvQj1PNtOjcXNMiaX4yax4eYy+EvVE8K6OYGlOXJ23+Z2s2AKwnCuhzmT61h2dAkQj317umJepHf3
	g3DbY0hkF50gXjk45wLk5ukLMkKVesNAQQ2ZxRNEBthpCj175b91CIU1orjmLfqZhVXc2n3izftHV
	RKAuZUst5sEAvxIrKuctpRPD1YE1lImXNmT8pT7fnQ6Kgq3WDnr3iipcDuDN1Tg0KJdZFXphJPMyZ
	NEtanSWcmxiCO/OaJIsTLs9PrdMNHH+iQbgzrHuKnNqaHI4Mgi3Q1ZZuG+mJcA1efmglL2EVQdY1y
	73YU5ELrkCr/wAPkWHUwYCxS6wi+xCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrZ3-0002AS-U9; Wed, 31 Jul 2019 16:34:57 +0000
Received: from mail-eopbgr710086.outbound.protection.outlook.com
 ([40.107.71.86] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrYv-00029q-5O
 for openwrt-devel@lists.openwrt.org; Wed, 31 Jul 2019 16:34:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MueMAXUR2TTRMU2MvnjFCFdSlmABGVStV+cOFf9pNEBddM6Z2AHjGEPqOPQIgN50OZ3fyWUdnM917INkyM765Kmvsx45awY94rPpVcuvB2UQEHb8feFFD5iwS99RCjvJtZwDKSsrRjSsDbkKvE8GK7X/HjZmdLe5ulx5c+v+MRNSicyAPIWpmph8OOzkc/sQslsz0ABy03KbFzSszVzkreDBB1kKSiO1N3Z1j9l78VAqbSUFGGs164TNAhmxu6w8oMPiJoVaxGVDeabRmeN3SUbyFseeVKvwTqbrgKEZ8lACMYuHxjI7OHv9+J3qNGVea5F1BmqwE3vuYd9zPosulg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJ89VePawwkfvFdtJ2gldx+Snu8gSbUsnwkKjw/ZpcA=;
 b=TQfxhwum8omlpu/arAIAXDo6SC6HzybsAQap0yknxQNYMlG7xEkVv2Dw0uuvdNkL2/Z4TJ1FcjUrMZEvPOkqOjudXlzpuW6ssfM5bsanezUpAEwy4bfu1kMBlk5t4KoTEevLpPVFQqs5cxXBDXOyOSEGXNNt6TICxMykPW8Rew2JeJajpdLzNO6IsDyIF3v0cJH41xqZ+a69QTtnoYs0furZuTq7TxK1bMEZew/q1K3ELRAC1fO4cFH5uJXRELHstwEjd+4EXSJDPozHFHCB8YEF0+p40R49UKmgEckuY2lWoy/U4e76DUDJl8kATpVG4MJlNvVMjNEBni+2xdaUsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=jci.com;dmarc=pass action=none header.from=jci.com;dkim=pass
 header.d=jci.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jci.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJ89VePawwkfvFdtJ2gldx+Snu8gSbUsnwkKjw/ZpcA=;
 b=RjvJBnR0eyUOzGEMOKpzkfjnY0l0HZhIX7IUGyJdfl+9HVra99i+P+dY6BQi4+UNt3k09JN3Jg3PpQMHRgvzW6uaOKdQ2DhU+l+CFQNPCPGM0CJk8b3tdamJ9lglmscftlZBvJlgD1KITVU/r0v9an6/YDXIwyhBG4U8MLSByhk=
Received: from BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM (141.251.10.213) by
 BN6P132MB0116.NAMP132.PROD.OUTLOOK.COM (141.251.10.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 16:34:36 +0000
Received: from BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM
 ([fe80::1471:77f3:c87b:41d6]) by BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM
 ([fe80::1471:77f3:c87b:41d6%12]) with mapi id 15.20.2115.005; Wed, 31 Jul
 2019 16:34:36 +0000
From: Nick Schaf <nick.schaf@jci.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: Memory leak related to OpenWrt patch of hostapd
Thread-Index: AdVHpSrbxmcW5EsRRmWRCDlxLFoxcw==
Date: Wed, 31 Jul 2019 16:34:36 +0000
Message-ID: <BN6P132MB0098F57D3CA062CE1CBB935C8BDF0@BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Enabled=True;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_SiteId=a1f1e214-7ded-45b6-81a1-9e8ae3459641;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Owner=cschafn@jci.com;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_SetDate=2019-07-31T16:34:34.7015851Z;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Name=Internal ;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_ActionId=f525ec3a-90dd-4de1-ad74-c67487ddb801;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nick.schaf@jci.com; 
x-originating-ip: [165.225.57.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8dad9688-574d-4904-071e-08d715d4f9bc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BN6P132MB0116; 
x-ms-traffictypediagnostic: BN6P132MB0116:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BN6P132MB01162F9890F209B8F58A5C7A8BDF0@BN6P132MB0116.NAMP132.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(39860400002)(136003)(189003)(199004)(6306002)(81166006)(86362001)(316002)(66446008)(7736002)(76116006)(5660300002)(66946007)(2906002)(52536014)(55236004)(64756008)(14454004)(66556008)(66476007)(6506007)(71200400001)(102836004)(71190400001)(74316002)(5640700003)(33656002)(9686003)(478600001)(55016002)(6436002)(256004)(8676002)(7696005)(486006)(2351001)(68736007)(81156014)(66066001)(9326002)(2501003)(26005)(6916009)(186003)(99286004)(53936002)(54896002)(6116002)(44832011)(790700001)(3846002)(476003)(25786009)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6P132MB0116;
 H:BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: jci.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hsGGR+mappUHZt1lJGjfQtqRrTUsumKRlTWUeJL1b6czUIOyZw9tsjAYvbs4PTj/rPZARRPMFVXn3XxSiKAX5yt70giS9AswM6BHEUtI8ZdHJeivFX8jOyYmSJB4VaGAFRwtI9mwEp85HpKOM8ShR0n+BLp9EQwyIz0BowTqw1Xh7qz9Epnn8Amgcl2+2xt3ZjvuExYazVTJRZQr6mwuaeJHdW8aqD+pkjnYtsmP0B4ToVpKFNOrjY/Szqx9VXkUrku7Rd9wCwC6NF6gLK1ah8gFHDuEMaSq/1ENe91qL7ggxhFnqNhXKG+KeEfiFjTRWkTELV19p8b/PCwv3YZz0BJcxvJQGcuYM3BPCUosDHxGcss2lvvW6m+kLIhnUPz3KQjH2nVgUI0z2mjqEmzGKsuW8WIJkgvTKvwrex4y6zg=
MIME-Version: 1.0
X-OriginatorOrg: jci.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dad9688-574d-4904-071e-08d715d4f9bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 16:34:36.2404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a1f1e214-7ded-45b6-81a1-9e8ae3459641
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cschafn@jci.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6P132MB0116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_093451_163641_BE72C03C 
X-CRM114-Status: UNSURE (   2.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
Subject: [OpenWrt-Devel] Memory leak related to OpenWrt patch of hostapd
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5981891409401639303=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5981891409401639303==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6P132MB0098F57D3CA062CE1CBB935C8BDF0BN6P132MB0098NAMP_"

--_000_BN6P132MB0098F57D3CA062CE1CBB935C8BDF0BN6P132MB0098NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I've noticed the wpa_supplicant process on my mesh interfaces leaking memor=
y to the point that the kernel kills the process.
It was discovered in 18.06.2, but I've reproduced it with 18.06.4 and with =
the master branch from the GitHub repo.  Since the leak occurs as mesh link=
s are created and destroyed, I was able to reproduce it with a simple two-n=
ode setup where I monitor the wpa_supplicant process VSZ on one node and re=
peatedly bring wifi up and down on the other node.

I've traced it back to the 18.06.2 release, specifically to lines 34-35 of =
package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-t=
x-on-DFS.patch
+                 (modes =3D nl80211_get_hw_feature_data(bss, &num_modes, &=
flags,
+                                                                          =
                   &dfs_domain)) &&
That code was added in a35f24309021c1c0e9cbed0faedf58b941cb4bd3.

I removed the entire patch file to resolve the memory leak because the subs=
equent call to ieee80211_is_dfs() uses the return value from nl80211_get_hw=
_feature_data().  However, I know the problem is specifically related to th=
e nl80211_get_hw_feature_data() call because I stepped-backward through com=
mits of the hostapd source until I got back to 0f7fc6b98de9c69f511b9b22f2b6=
5553126362eb, where ieee80211_is_dfs() had only one argument and didn't rel=
y on the nl80211_get_hw_feature_data() return value.  At that point, the me=
mory leak still occurred until I commented-out the call to nl80211_get_hw_f=
eature_data().

I attempted to dive into nl80211_get_hw_feature_data(), but was quickly los=
t, so I defer to those that are more experienced in that code.

Test platform: Compex WPJ-531 (ar71xx)

Thanks,
-Nick

--_000_BN6P132MB0098F57D3CA062CE1CBB935C8BDF0BN6P132MB0098NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;ve noticed the wpa_supplicant process on my =
mesh interfaces leaking memory to the point that the kernel kills the proce=
ss.<o:p></o:p></p>
<p class=3D"MsoNormal">It was discovered in 18.06.2, but I&#8217;ve reprodu=
ced it with 18.06.4 and with the master branch from the GitHub repo.&nbsp; =
Since the leak occurs as mesh links are created and destroyed, I was able t=
o reproduce it with a simple two-node setup where
 I monitor the wpa_supplicant process VSZ on one node and repeatedly bring =
wifi up and down on the other node.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve traced it back to the 18.06.2 release, sp=
ecifically to lines 34-35 of package/network/services/hostapd/patches/015-m=
esh-do-not-use-offchan-mgmt-tx-on-DFS.patch
<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; (modes =3D nl80211_get_hw_feat=
ure_data(bss, &amp;num_modes, &amp;flags,<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;dfs_domain)) &=
amp;&amp;<o:p></o:p></p>
<p class=3D"MsoNormal">That code was added in a35f24309021c1c0e9cbed0faedf5=
8b941cb4bd3.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I removed the entire patch file to resolve the memor=
y leak because the subsequent call to ieee80211_is_dfs() uses the return va=
lue from nl80211_get_hw_feature_data().&nbsp; However, I know the problem i=
s specifically related to the nl80211_get_hw_feature_data()
 call because I stepped-backward through commits of the hostapd source unti=
l I got back to 0f7fc6b98de9c69f511b9b22f2b65553126362eb, where ieee80211_i=
s_dfs() had only one argument and didn&#8217;t rely on the nl80211_get_hw_f=
eature_data() return value.&nbsp; At that point,
 the memory leak still occurred until I commented-out the call to nl80211_g=
et_hw_feature_data().<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I attempted to dive into nl80211_get_hw_feature_data=
(), but was quickly lost, so I defer to those that are more experienced in =
that code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Test platform: Compex WPJ-531 (ar71xx)<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">-Nick<o:p></o:p></p>
</div>
</body>
</html>

--_000_BN6P132MB0098F57D3CA062CE1CBB935C8BDF0BN6P132MB0098NAMP_--


--===============5981891409401639303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5981891409401639303==--

