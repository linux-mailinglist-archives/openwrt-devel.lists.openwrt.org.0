Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7726865954
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jul 2019 16:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ced80EbG82thWcdSoatCb7s8haQb0z7IN46cywjd8Nw=; b=GFj
	Y7vmJaLnJ2nF1xnR50H+ZYjgyNKR9bOdUyKYJRoUQRnfytjEv2NLX5fp19F8i5fGX80j56jMbfYlv
	W0qtzbyb5L+C/WEHlYzQSIle3HYrjwGiOGB5X38PH2AUR5EqRcWhL4i43wC6alCYbhqLiTF/qip5G
	WpMgqY2KXRwsuSDUbwSHtrvec5+9B3fMmxfHmaLZdJ5ZlmhExnIM5oFXR5ywJOGGhGyLDzDWPJMzo
	oFG8P3k+wfiA32yxQXbHSRF7J69OSDEZKrpxedEEhe3Q0rnNNTTIe1CPRF+61VMwFYhpU7AEEsDqc
	dY7yVEWVbS5DNWaC1D2L6Sqxt1DLcAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlaMI-0005l3-TZ; Thu, 11 Jul 2019 14:47:42 +0000
Received: from mail-oln040092071038.outbound.protection.outlook.com
 ([40.92.71.38] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlaLz-0005jx-66
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jul 2019 14:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xQ7vE2gZ1STs9Zyw6grB15lt1B9MgETL68g/hH94yKs=;
 b=KqeUVA/BNy6CXRJp678HSUF5kc8fATgMyMeSs61Pxb9fVunNiKigm+/GfG9Xr7h0Z5YcsKqL69QPt9wbVXQhO/RiMR209QbhVj0quPxkUGVb82Bd9DWvsaXDotZrWiTJoG5le6Ds4hGS8jYqzeAc4BmIFiTI3CB1anjW9LXlDW3kSEZ8Ez/DcOMhAFcVtIUVLAMEgFr6nS34vwDW5VJdMWlcw9ourF77qKbjNsN8M+T2raL3CU42YKfa/UHFtlkMajFs9TGU7QjrI5Y6j+RQd3CLGaoqe/bPLx89SGUF9oEm97EAFvzC++ev0iffvNq739z0npqJM0rB9bfwedRc7w==
Received: from AM5EUR03FT037.eop-EUR03.prod.protection.outlook.com
 (10.152.16.52) by AM5EUR03HT117.eop-EUR03.prod.protection.outlook.com
 (10.152.17.251) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2052.18; Thu, 11 Jul
 2019 14:47:17 +0000
Received: from DB7PR04MB5467.eurprd04.prod.outlook.com (10.152.16.53) by
 AM5EUR03FT037.mail.protection.outlook.com (10.152.17.241) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 11 Jul 2019 14:47:16 +0000
Received: from DB7PR04MB5467.eurprd04.prod.outlook.com
 ([fe80::6d3c:ed95:2251:a3a1]) by DB7PR04MB5467.eurprd04.prod.outlook.com
 ([fe80::6d3c:ed95:2251:a3a1%4]) with mapi id 15.20.2052.020; Thu, 11 Jul 2019
 14:47:16 +0000
From: Paul Rowland <paulthomasrowland@hotmail.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH v2 0/7] MIPS: lantiq: irq: Various fixes, add SMP support
Thread-Index: AQHVN/amYoDk3pg6oE6SocIIP/y/4A==
Date: Thu, 11 Jul 2019 14:47:16 +0000
Message-ID: <DB7PR04MB546731D065AA2D8AE3A7F74EA6F30@DB7PR04MB5467.eurprd04.prod.outlook.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:049A1AB9F79690D4A4D92011513FE9DE277AB9636FBEBAFB181896FDAF28B33C;
 UpperCasedChecksum:855D8EC4A61043D56B916D936170B93A5D900BC946353426E580C8DA540C0400;
 SizeAsReceived:6807; Count:41
x-tmn: [QUewoU4P1szXbnVql3hYjTBIcZMGGTHR7e5kLc3fSdsLK2BErB33/2PF0x4GFvr+]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:AM5EUR03HT117; 
x-ms-traffictypediagnostic: AM5EUR03HT117:
x-microsoft-antispam-message-info: EoFW7z7FeRvHkzjIz/ey5I6IqP6tydcvIb7/3/lyBK36Q26MfTuZj65eOodOfo8lQywMYf8z+e7w4ZiibdCBD72s154nuzLkVfyW/u4shSuDjWdm1OY7P65C1UR4mC4vhidYvXAqVgPnKyko6tvXQKhwlLkcPAFRbcG9FjATWROAFakqHaw49U059CPISEP1
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d9f2fc4c-1fc8-4088-181a-08d7060eab52
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 14:47:16.8797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_074723_322767_038577A6 
X-CRM114-Status: UNSURE (   3.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.71.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (paulthomasrowland[at]hotmail.com)
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH v2 0/7] MIPS: lantiq: irq: Various fixes,
 add SMP support
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
Cc: "paul.burton@mips.com" <paul.burton@mips.com>
Content-Type: multipart/mixed; boundary="===============6718914144330526461=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6718914144330526461==
Content-Language: en-IE
Content-Type: multipart/alternative;
	boundary="_000_DB7PR04MB546731D065AA2D8AE3A7F74EA6F30DB7PR04MB5467eurp_"

--_000_DB7PR04MB546731D065AA2D8AE3A7F74EA6F30DB7PR04MB5467eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Openwrt Lantiq was on kernel 4.14.x until a few days ago. It now is on 4.19=
.57.

I plan to do a build for the BT Home Hub 5a (XRX268) this weekend.

I wonder if this series of patches by Petr Cvek is now in trunk? If not, ho=
w do I add mips-next to my build tree.

TIA

PTR

--_000_DB7PR04MB546731D065AA2D8AE3A7F74EA6F30DB7PR04MB5467eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Openwrt Lantiq was on kernel 4.14.x until a few days ago. It now is on 4.19=
.57.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I plan to do a build for the BT Home Hub 5a (XRX268) this weekend.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I wonder if this series of patches by Petr Cvek is now in trunk? If not, ho=
w do I add mips-next to my build tree.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
TIA</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
PTR<br>
</div>
</body>
</html>

--_000_DB7PR04MB546731D065AA2D8AE3A7F74EA6F30DB7PR04MB5467eurp_--


--===============6718914144330526461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6718914144330526461==--

