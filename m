Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4877720999
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 16:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vACGsESKBvvI+342jlg8WH6DqyrKjAEQ7ZLCcWbl1jA=; b=GetO3HiOOedYdmNxI0lKErv3w
	FfE8xEdvGA4PBnbuMBHwVGFrLEHarqfceDBVl8e0dbQcR40FAOaveY3Fc+Pc4cFwNcHqZdvVh79Bb
	ZD/ZF/ZidH+f8udeOHfiChzpOYjLXngfL5iKBVeXrp4PRyCGBYw5sfnsbszXN4oPLvQvbCZr3uOu4
	pu3aP+kNqv9EzrYXyMBUUMSbw1zV/wVeKKuL5el2OO8d4l6zvwfCfduEMvaYrYcLZsVCFofXM9+sH
	5ElaVjHSMUtCi9W/VumU1BrUfj+GCXL7lX5snhcIRC5GUI4xo94ovelBN1vFkCrAgT7OJtkndlBeG
	3DLPradNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHMM-0000Uq-1X; Thu, 16 May 2019 14:27:50 +0000
Received: from mail-oln040092068047.outbound.protection.outlook.com
 ([40.92.68.47] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHME-0000UU-UV
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 14:27:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ziqleWk6LGyq6cotk7ASegWxMKmqV/KB9+/15zv7LdU=;
 b=D8Ytjwe35ABTbysEWga/+/qmgTmo+Q62RqF8imPQ+m79Ry8ZTWMtK26q/KF9+47MuQWPcVI09J8vMWPpNfpmwON44NiX2wHKwoT6gf5rF25ibUzO+D7WP27xWRXiB3m/7WXst9wQvWPsE9DkmG9eDh2E93HjyOoKKmzJrtQoIprGC3J078obtyB0dNztzR5rjMu1AGPn6vvF3E4TO0qBZZutAHpmb8dM81V8Vvbny6JfKsVrTtP0NOJgRfvTpZ2ckfen2aQ2BHcTSI+9XQs6Tr3gGkFq83ncaXtWaUKi2uEDnDDpObqBP7lBnq4bebFEQCDfgbFmrUQNx9+GKvrVoQ==
Received: from AM5EUR02FT003.eop-EUR02.prod.protection.outlook.com
 (10.152.8.53) by AM5EUR02HT131.eop-EUR02.prod.protection.outlook.com
 (10.152.9.91) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11; Thu, 16 May
 2019 14:27:39 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com (10.152.8.58) by
 AM5EUR02FT003.mail.protection.outlook.com (10.152.8.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16 via Frontend Transport; Thu, 16 May 2019 14:27:39 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b]) by AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b%7]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 14:27:39 +0000
From: Tan Xiaofan <xfan1024@live.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: =?gb2312?B?u9i4tDogW1BBVENIXSBpbnRlcmZhY2UtaXA6IGZpeCBmaW5kIGxvY2FsbHkg?=
 =?gb2312?Q?addressable_target_for_p2p?=
Thread-Index: AQHVC++b20TpGDtII06zsYpNv4AdyKZtWQTx
Date: Thu, 16 May 2019 14:27:39 +0000
Message-ID: <AM6PR03MB4821954D0A14B446C7FF8A42B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
In-Reply-To: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:819A672E928C8B267662BF7D0AC49F7C52249186897F834DDB7EFA4702183CDA;
 UpperCasedChecksum:1EF1EE68E1A8FCED7208D171BA5F3B41FE4ECDE43F3A22A1D6DE9407665FFAEF;
 SizeAsReceived:6917; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [RC3+6x4B8VQMdLwRwusXOX7tmhDZoSIB]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:AM5EUR02HT131; 
x-ms-traffictypediagnostic: AM5EUR02HT131:
x-microsoft-antispam-message-info: 1eCH8h6UJh0PTrMrSNocTZgzn7vR/BzGV2y8A742nAhhNJimR0WcxFVW12tRKgkNQsSN43cgpabW8h6VkJ+q7PoiG0aY/iE1shTrTtZ9who/a4LIsaz96ELAODgr2nnaLy/B8Mo+Y8NfS/MnMfJpTvq3rW4gF+zywYbeguPXMg7zKeQ/UYF0/ZbjOi4Or8VE
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b023b418-7c38-49cf-2267-08d6da0aa655
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 14:27:39.3969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_072743_047556_D45917B9 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.68.47 listed in list.dnswl.org]
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
Subject: [OpenWrt-Devel] =?gb2312?b?u9i4tDogW1BBVENIXSBpbnRlcmZhY2UtaXA6?=
 =?gb2312?b?IGZpeCBmaW5kIGxvY2FsbHkgYWRkcmVzc2FibGUgdGFyZ2V0IGZvciBwMnA=?=
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
Content-Type: multipart/mixed; boundary="===============6066969320459865885=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6066969320459865885==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_AM6PR03MB4821954D0A14B446C7FF8A42B50A0AM6PR03MB4821eurp_"

--_000_AM6PR03MB4821954D0A14B446C7FF8A42B50A0AM6PR03MB4821eurp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

Rml4IGNvZGUgc3R5bGUNCg0KRnJvbSA1YWI1NGE2YjFmZDRjNGE3MjFlNjY3MjdhMTM1YjVjMDMw
NTEyMjRlIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogeGlhb2ZhbiA8eGZhbjEwMjRA
bGl2ZS5jb20+DQpEYXRlOiBUaHUsIDE2IE1heSAyMDE5IDIxOjEyOjQ3ICswODAwDQpTdWJqZWN0
OiBbUEFUQ0hdIGludGVyZmFjZS1pcDogZml4IGZpbmQgbG9jYWxseSBhZGRyZXNzYWJsZSB0YXJn
ZXQgZm9yIHAycA0KDQpTaWduZWQtb2ZmLWJ5OiB4aWFvZmFuIDx4ZmFuMTAyNEBsaXZlLmNvbT4N
Ci0tLQ0KIGludGVyZmFjZS1pcC5jIHwgMyArKysNCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspDQoNCmRpZmYgLS1naXQgYS9pbnRlcmZhY2UtaXAuYyBiL2ludGVyZmFjZS1pcC5jDQpp
bmRleCA2OTAwY2Q3Li44ZDU1ODdjIDEwMDY0NA0KLS0tIGEvaW50ZXJmYWNlLWlwLmMNCisrKyBi
L2ludGVyZmFjZS1pcC5jDQpAQCAtMTk2LDYgKzE5Niw5IEBAIF9fZmluZF9pcF9hZGRyX3Rhcmdl
dChzdHJ1Y3QgaW50ZXJmYWNlX2lwX3NldHRpbmdzICppcCwgdW5pb24gaWZfYWRkciAqYSwgYm9v
bCB2DQogICBpZiAodjYgIT0gKChhZGRyLT5mbGFncyAmIERFVkFERFJfRkFNSUxZKSA9PSBERVZB
RERSX0lORVQ2KSkNCiAgICBjb250aW51ZTsNCg0KKyAgaWYgKCF2NiAmJiBhZGRyLT5wb2ludF90
b19wb2ludCAmJiBhLT5pbi5zX2FkZHIgPT0gYWRkci0+cG9pbnRfdG9fcG9pbnQpDQorICAgcmV0
dXJuIHRydWU7DQorDQogICAvKiBIYW5kbGUgb2ZmbGluayBhZGRyZXNzZXMgY29ycmVjdGx5ICov
DQogICB1bnNpZ25lZCBpbnQgbWFzayA9IGFkZHItPm1hc2s7DQogICBpZiAoKGFkZHItPmZsYWdz
ICYgREVWQUREUl9GQU1JTFkpID09IERFVkFERFJfSU5FVDYgJiYNCi0tDQoyLjE3LjENCg0K

--_000_AM6PR03MB4821954D0A14B446C7FF8A42B50A0AM6PR03MB4821eurp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div><span>Fix code style<br>
</span></div>
<div><span><br>
</span></div>
<div><span>From 5ab54a6b1fd4c4a721e66727a135b5c03051224e Mon Sep 17 00:00:0=
0 2001</span></div>
<div><span></span></div>
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
<div>&nbsp;interface-ip.c | 3 &#43;&#43;&#43;<br>
</div>
<div>&nbsp;1 file changed, 3 insertions(&#43;)<br>
</div>
<div><br>
</div>
<div>diff --git a/interface-ip.c b/interface-ip.c<br>
</div>
<div>index 6900cd7..8d5587c 100644<br>
</div>
<div>--- a/interface-ip.c<br>
</div>
<div>&#43;&#43;&#43; b/interface-ip.c<br>
</div>
<div>@@ -196,6 &#43;196,9 @@ __find_ip_addr_target(struct interface_ip_sett=
ings *ip, union if_addr *a, bool v<br>
</div>
<div>&nbsp; &nbsp;if (v6 !=3D ((addr-&gt;flags &amp; DEVADDR_FAMILY) =3D=3D=
 DEVADDR_INET6))<br>
</div>
<div>&nbsp; &nbsp; continue;<br>
</div>
<div>&nbsp;<br>
</div>
<div>&#43; &nbsp;if (!v6 &amp;&amp; addr-&gt;point_to_point &amp;&amp; a-&g=
t;in.s_addr =3D=3D addr-&gt;point_to_point)<br>
</div>
<div>&#43; &nbsp; return true;<br>
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
<span></span>
</body>
</html>

--_000_AM6PR03MB4821954D0A14B446C7FF8A42B50A0AM6PR03MB4821eurp_--


--===============6066969320459865885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6066969320459865885==--

