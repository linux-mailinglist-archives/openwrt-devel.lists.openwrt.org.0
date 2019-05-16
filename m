Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8726E208ED
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 16:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Erf77OnuLpTPQBKV218GnDzZbiuIkJrrH+OUrUzk9QE=; b=bh0
	YO9IjkKrzDq926rajVJyc27pKg/Ls5rcxSuyDBd4+YU7NKfb83GQ3V2z7Z8EX4Dzb9dLKZYDu+HCZ
	cbzK7mC2E/UKV4oi7NkF7wTgyNcWZxsYzli3R+/rq0aHRUv2EjCesRDF/GLTlNd0PdE905s3OiidI
	48c53bcYWesmuBoVnKdXSyq1RxmfvlMaDYMeZVrwUrDbUSwxNqPIT+lIo/YQApCwLxUMc1tGybGLo
	hqr3MjFHUR9XzsJrqc7aXSgDDeZjQOwou0FfhAipeQY3+Klb3gL/liIERJd4H4ziRoJVAakMrpzom
	BbzDQWNbPMFJg2W5HdpfZF/3rc85lTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGwQ-0007SC-C4; Thu, 16 May 2019 14:01:02 +0000
Received: from mail-oln040092067064.outbound.protection.outlook.com
 ([40.92.67.64] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGw6-0007Cv-Fg
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 14:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=43gIFAcppHxZ/P03mj0mqahTSQeNbDNb+ej0htnxIjM=;
 b=sV8u+N332TSDYdT4brdHiQQ9LCYBIjqBWf+B56ZIaO4ZV0Woez+WuNG242P6+9NrMFPuU76MuiCINUAW1cg1TW9u7Sip+WxhGav0Ar470gPjYpkel1DEK/pf/DbIfZCwU5AxOeG9wnQ7FKIcARxiyaeXL/0s5S/rU4BOYXBWezBWw87pE4pnzod7mdKvdtcRVsKH0C0L2fOTh8nBnuBxU06QCd2b2K/03gOqJlWKGdnm4bDLT2/IIBKsGxhsKMeKS8qnkwCHTVWcNuJG3UxeWr7ThiqYaedI4EldsqzFRe7d0/Wc5GJqjRwFMwJG9YKIX1AzRU4eYDtuiMOEJqWY7w==
Received: from VE1EUR02FT029.eop-EUR02.prod.protection.outlook.com
 (10.152.12.58) by VE1EUR02HT167.eop-EUR02.prod.protection.outlook.com
 (10.152.13.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11; Thu, 16 May
 2019 14:00:39 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com (10.152.12.53) by
 VE1EUR02FT029.mail.protection.outlook.com (10.152.12.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16 via Frontend Transport; Thu, 16 May 2019 14:00:39 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b]) by AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b%7]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 14:00:39 +0000
From: Tan Xiaofan <xfan1024@live.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] interface-ip: fix find locally addressable target for p2p
Thread-Index: AQHVC++b20TpGDtII06zsYpNv4AdyA==
Date: Thu, 16 May 2019 14:00:39 +0000
Message-ID: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F8A7B5781F490A32861DF1B57B5E27AC61BDC5BC35859D5F0AAD8BF466FD90ED;
 UpperCasedChecksum:8B7110922A1CFF16AFE111B458B944E9537562C2AE4066E455782B76CAA2708F;
 SizeAsReceived:6619; Count:41
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [DBKGSejIleANHJ3xJqm6gXaWMclg4HTK]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR02HT167; 
x-ms-traffictypediagnostic: VE1EUR02HT167:
x-microsoft-antispam-message-info: zHZP8l2YVUz9Mk5EsuYaSl3WqcuNbBcHdHuUgYsmyLhd+G+hht0OwurO2BAVXXriPt7fRQDC9UydH1bTHVrFRVPMSBuToOenpzOic/jkj+3eGHTcY/sfFdLUN+H2gPXubZvH/T2MakJnV/gc2FVCGfw7rqYSGeqOuGy1JvHYzXTvDTsdWW2pm62REH3alMw4
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d2c0a4e-ec85-4c59-2111-08d6da06e0d6
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 14:00:39.5642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_070042_937571_73388657 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.64 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xfan1024[at]live.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (xfan1024[at]live.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally addressable
 target for p2p
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8629448767423393566=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8629448767423393566==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_AM6PR03MB4821E7027EF336E03B57C642B50A0AM6PR03MB4821eurp_"

--_000_AM6PR03MB4821E7027EF336E03B57C642B50A0AM6PR03MB4821eurp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

RnJvbSBkMGUxY2I4MWI0NWVjODI1MTk5ZDQ5OWNkYTljOGRhZWY5NGUxM2E1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogeGlhb2ZhbiA8eGZhbjEwMjRAbGl2ZS5jb20+DQpEYXRlOiBU
aHUsIDE2IE1heSAyMDE5IDIxOjEyOjQ3ICswODAwDQpTdWJqZWN0OiBbUEFUQ0hdIGludGVyZmFj
ZS1pcDogZml4IGZpbmQgbG9jYWxseSBhZGRyZXNzYWJsZSB0YXJnZXQgZm9yIHAycA0KDQpTaWdu
ZWQtb2ZmLWJ5OiB4aWFvZmFuIDx4ZmFuMTAyNEBsaXZlLmNvbT4NCi0tLQ0KIGludGVyZmFjZS1p
cC5jIHwgNCArKysrDQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0t
Z2l0IGEvaW50ZXJmYWNlLWlwLmMgYi9pbnRlcmZhY2UtaXAuYw0KaW5kZXggNjkwMGNkNy4uN2Fi
ODY0MyAxMDA2NDQNCi0tLSBhL2ludGVyZmFjZS1pcC5jDQorKysgYi9pbnRlcmZhY2UtaXAuYw0K
QEAgLTE5Niw2ICsxOTYsMTAgQEAgX19maW5kX2lwX2FkZHJfdGFyZ2V0KHN0cnVjdCBpbnRlcmZh
Y2VfaXBfc2V0dGluZ3MgKmlwLCB1bmlvbiBpZl9hZGRyICphLCBib29sIHYNCiAgIGlmICh2NiAh
PSAoKGFkZHItPmZsYWdzICYgREVWQUREUl9GQU1JTFkpID09IERFVkFERFJfSU5FVDYpKQ0KICAg
IGNvbnRpbnVlOw0KDQorICBpZiAoIXY2ICYmIGFkZHItPnBvaW50X3RvX3BvaW50ICYmIGEtPmlu
LnNfYWRkciA9PSBhZGRyLT5wb2ludF90b19wb2ludCkgew0KKyAgIHJldHVybiB0cnVlOw0KKyAg
fQ0KKw0KICAgLyogSGFuZGxlIG9mZmxpbmsgYWRkcmVzc2VzIGNvcnJlY3RseSAqLw0KICAgdW5z
aWduZWQgaW50IG1hc2sgPSBhZGRyLT5tYXNrOw0KICAgaWYgKChhZGRyLT5mbGFncyAmIERFVkFE
RFJfRkFNSUxZKSA9PSBERVZBRERSX0lORVQ2ICYmDQotLQ0KMi4xNy4xDQoNCg0K

--_000_AM6PR03MB4821E7027EF336E03B57C642B50A0AM6PR03MB4821eurp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>From d0e1cb81b45ec825199d499cda9c8daef94e13a5 Mon Sep 17 00:00:00 200=
1<br>
</span>
<div>From: xiaofan &lt;xfan1024@live.com&gt;<br>
</div>
<div>Date: Thu, 16 May 2019 21:12:47 &#43;0800<br>
</div>
<div>Subject: [PATCH] interface-ip: fix find locally addressable target for=
 p2p<br>
</div>
<div><br>
</div>
<div>Signed-off-by: xiaofan &lt;xfan1024@live.com&gt;<br>
</div>
<div>---<br>
</div>
<div>&nbsp;interface-ip.c | 4 &#43;&#43;&#43;&#43;<br>
</div>
<div>&nbsp;1 file changed, 4 insertions(&#43;)<br>
</div>
<div><br>
</div>
<div>diff --git a/interface-ip.c b/interface-ip.c<br>
</div>
<div>index 6900cd7..7ab8643 100644<br>
</div>
<div>--- a/interface-ip.c<br>
</div>
<div>&#43;&#43;&#43; b/interface-ip.c<br>
</div>
<div>@@ -196,6 &#43;196,10 @@ __find_ip_addr_target(struct interface_ip_set=
tings *ip, union if_addr *a, bool v<br>
</div>
<div>&nbsp; &nbsp;if (v6 !=3D ((addr-&gt;flags &amp; DEVADDR_FAMILY) =3D=3D=
 DEVADDR_INET6))<br>
</div>
<div>&nbsp; &nbsp; continue;<br>
</div>
<div>&nbsp;<br>
</div>
<div>&#43; &nbsp;if (!v6 &amp;&amp; addr-&gt;point_to_point &amp;&amp; a-&g=
t;in.s_addr =3D=3D addr-&gt;point_to_point) {<br>
</div>
<div>&#43; &nbsp; return true;<br>
</div>
<div>&#43; &nbsp;}<br>
</div>
<div>&#43;<br>
</div>
<div>&nbsp; &nbsp;/* Handle offlink addresses correctly */<br>
</div>
<div>&nbsp; &nbsp;unsigned int mask =3D addr-&gt;mask;<br>
</div>
<div>&nbsp; &nbsp;if ((addr-&gt;flags &amp; DEVADDR_FAMILY) =3D=3D DEVADDR_=
INET6 &amp;&amp;<br>
</div>
<div>-- <br>
</div>
<div>2.17.1<br>
</div>
<div><br>
</div>
<span></span><br>
</div>
</body>
</html>

--_000_AM6PR03MB4821E7027EF336E03B57C642B50A0AM6PR03MB4821eurp_--


--===============8629448767423393566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8629448767423393566==--

