Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185063B83C
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 17:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BfeBF8mEwO4bGRIpJGRizaXc5AcLHbCIS7yej2SUBmU=; b=cdH/VKVDyYTGMvYn6E9mJg7Y2
	h9asoh2lxSfpM/TfJenIWoeToLiT4wmWeVF+mMUbVGknpzQqMK8bJqAbh7M5O5nU5YJhdGwr1fhzl
	2HT21CrDiut7stF6jzBHxc/VQJZ94bqOdetuyFIERurXNFMxjvWGEq4tBOqL4hV6BcKvMHvRHwHJi
	9Q3348PiDl3UwWO4qdMyfo4ijTnWr+4ZezcVGKHqKA+tPzNQOjbansIi2ocdAQNP/pHzlrPfRFMAO
	DHRckWTou0Vm/KqVrGCi5Pr9TVGewd5S06ejj0QrM5hzGZ7hZBbJwNCFMHymGetzVTkkeJjEtmQe/
	9QTuPxxZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haM8Q-0006w6-0b; Mon, 10 Jun 2019 15:22:58 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haM8C-0006oO-MK
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 15:22:46 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,575,1557212400"; d="scan'208,217";a="36876802"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2019 08:22:43 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Jun 2019 08:22:43 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 10 Jun 2019 08:22:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nWObEAtFrV4h5TH+4C7bS76lYekbi/7RHB+mwMD7IdU=;
 b=L5+ummOdyQkAWTfnchnruEb3fqoKbjKcajcN1TQCClqZzKFBoWGNVGzgFaALI413p8vEwCd7MJXwDjEJVQJBRX+Vf+4mhkxUWcD0wEYb1MtWmJmadCHVqHTdaQAZMXLCgPZvps7Ai2meNkk/mBNk/tVQHVgxkcCXXM6GLR8VM34=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB2727.namprd11.prod.outlook.com (52.135.227.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Mon, 10 Jun 2019 15:22:42 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c05:e2:ad3d:58b1]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c05:e2:ad3d:58b1%3]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 15:22:41 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <hauke@hauke-m.de>, <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] [patch v1 00/11] at91 patch series.
Thread-Index: AQHVHp4GCyxZ+fPKfE69vIqP4Tuw6KaVAcPW
Date: Mon, 10 Jun 2019 15:22:41 +0000
Message-ID: <BYAPR11MB3157112B15A3B5431D6FDE4A82130@BYAPR11MB3157.namprd11.prod.outlook.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>,
 <8128dd11-feed-bf3c-bd0c-f2b2aa5f4d02@hauke-m.de>
In-Reply-To: <8128dd11-feed-bf3c-bd0c-f2b2aa5f4d02@hauke-m.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c36fb0f1-61bd-4b8d-4925-08d6edb77b1f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB2727; 
x-ms-traffictypediagnostic: BYAPR11MB2727:
x-microsoft-antispam-prvs: <BYAPR11MB2727F8418FD4A74295CA0D0082130@BYAPR11MB2727.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(376002)(396003)(136003)(346002)(189003)(199004)(6246003)(66946007)(66476007)(256004)(66556008)(66446008)(478600001)(19627405001)(25786009)(72206003)(2501003)(54896002)(9686003)(76116006)(6436002)(53936002)(14454004)(64756008)(14444005)(55016002)(71190400001)(229853002)(71200400001)(26005)(5660300002)(6606003)(86362001)(33656002)(52536014)(186003)(73956011)(110136005)(7736002)(76176011)(316002)(2906002)(7696005)(6506007)(102836004)(53546011)(99286004)(66066001)(81166006)(486006)(11346002)(476003)(68736007)(74316002)(8936002)(81156014)(8676002)(6116002)(446003)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2727;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 23r3pqHr5RzFivcdTV989Nggl2kB5bCBfsJowxbQE+ZnuhcX4J+dYSOz3mbCkC9RCexPR6wZ7gTD1AEEXEy3vRVkIqZ2ov1kwL4/h+QQ3poUGzUpuAzgVPT7XF1OULnwCM5x4PZH58GamXwb0TjkM+I8tclUC6AbiT2OWoFxaZZory22vufZ2xsbngPUhMyR5BC8Z4wzx0jpj0DgGVxH5r66ptNeDzme1BP6HkmJtLzMynS7WvsuJvtWxxEYQlPMgtTioBevzu2MWCUPlN7q8iDcxMXmTstKSIO86jHdghQ6rfMKZl3I2xR1Ykh9vpimGt4vv5NiacThKOpkHUPyXU8GGjYlO0irAzzZv0gaRKkDj09KrqoPosXmC4mpu4xYwdkbe429hIlOwj9F0aO4L2pO6mGjLsv9JDhSOJMN+Qg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c36fb0f1-61bd-4b8d-4925-08d6edb77b1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 15:22:41.8320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sandeepsheriker.mallikarjun@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2727
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_082244_897553_7F6DA4DF 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [patch v1 00/11] at91 patch series.
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
Content-Type: multipart/mixed; boundary="===============3304265270776369559=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3304265270776369559==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3157112B15A3B5431D6FDE4A82130BYAPR11MB3157namp_"

--_000_BYAPR11MB3157112B15A3B5431D6FDE4A82130BYAPR11MB3157namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

HI Hauke Mehrtens,

     Apologies for sending this patch for 4 times. i get a undelivered erro=
r message after submitting this patch. (don't know the reason).


yes, all the patches are same.

Regards,
Sandeep Sheriker

________________________________
From: Hauke Mehrtens <hauke@hauke-m.de>
Sent: Sunday, June 9, 2019 1:32 AM
To: Sandeep Sheriker Mallikarjun - C17018; openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] [patch v1 00/11] at91 patch series.

External E-Mail


On 5/31/19 2:06 AM, Sandeep Sheriker M wrote:
> Hi,
>  This patch series contains
>
> 1. rework in creating sdcard images for different subtarget.
> 2. creating a fit images.
> 3. add support for sam9x5ek soc
> 4. add uboot env file.
> 5. bump uboot & at91bootstrap to latest versions
>
>
> Sandeep Sheriker M (11):
>   uboot-at91: bump linux4sam_5.8 to linux4sam_6.0
>   uboot-at91:add at91sam9x5ek soc
>   uboot-at91: changed som1 ek default defconfigs
>   uboot-at91: fix -Wformat-security
>   at91bootstrap: bump v3.8.10 to v3.8.12
>   at91bootstrap: add support for at91sam9x5ek
>   at91bootstrap: add sama5d27_som1_eksd1_uboot as default defconfig
>   at91: move at91-sdcard command to sama5.mk
>   at91: add uboot environments
>   at91: create fit image
>   at91: create sdcard images for at91sam9x25 & at91sam9x25 boards.

I received this series 4 times, is it correct that the patches are all
the same?


>
>  package/boot/at91bootstrap/Makefile                | 25 ++++++++++----
>  package/boot/uboot-at91/Makefile                   | 25 +++++++++-----
>  .../patches/001-fix-Wformat-security.patch         | 13 +++++++
>  target/linux/at91/image/Makefile                   | 33 ++--------------=
--
>  target/linux/at91/image/sam9x.mk                   | 40 ++++++++++++++++=
++++++
>  target/linux/at91/image/sama5.mk                   | 38 ++++++++++++++++=
++++
>  target/linux/at91/image/uboot-env.txt              | 14 ++++++++
>  7 files changed, 143 insertions(+), 45 deletions(-)
>  create mode 100644 package/boot/uboot-at91/patches/001-fix-Wformat-secur=
ity.patch
>  create mode 100644 target/linux/at91/image/uboot-env.txt
>


--_000_BYAPR11MB3157112B15A3B5431D6FDE4A82130BYAPR11MB3157namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p style=3D"margin-top:0; margin-bottom:0">HI Hauke Mehrtens,</p>
<p style=3D"margin-top:0; margin-bottom:0">&nbsp;&nbsp;&nbsp;&nbsp; Apologi=
es for sending this patch for 4 times. i get a undelivered error message af=
ter submitting this patch. (don't know the reason).</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">yes, all the patches are same.<b=
r>
</p>
</div>
<div dir=3D"ltr" style=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family=
: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color =
Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Sym=
bol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<br>
</div>
<div dir=3D"ltr" style=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family=
: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color =
Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Sym=
bol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
Regards,</div>
<div dir=3D"ltr" style=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family=
: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color =
Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Sym=
bol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
Sandeep Sheriker <br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Hauke Mehrtens &lt;=
hauke@hauke-m.de&gt;<br>
<b>Sent:</b> Sunday, June 9, 2019 1:32 AM<br>
<b>To:</b> Sandeep Sheriker Mallikarjun - C17018; openwrt-devel@lists.openw=
rt.org<br>
<b>Subject:</b> Re: [OpenWrt-Devel] [patch v1 00/11] at91 patch series.</fo=
nt>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">External E-Mail<br>
<br>
<br>
On 5/31/19 2:06 AM, Sandeep Sheriker M wrote:<br>
&gt; Hi,<br>
&gt;&nbsp; This patch series contains <br>
&gt; <br>
&gt; 1. rework in creating sdcard images for different subtarget.<br>
&gt; 2. creating a fit images.<br>
&gt; 3. add support for sam9x5ek soc <br>
&gt; 4. add uboot env file.<br>
&gt; 5. bump uboot &amp; at91bootstrap to latest versions<br>
&gt; <br>
&gt; <br>
&gt; Sandeep Sheriker M (11):<br>
&gt;&nbsp;&nbsp; uboot-at91: bump linux4sam_5.8 to linux4sam_6.0<br>
&gt;&nbsp;&nbsp; uboot-at91:add at91sam9x5ek soc<br>
&gt;&nbsp;&nbsp; uboot-at91: changed som1 ek default defconfigs<br>
&gt;&nbsp;&nbsp; uboot-at91: fix -Wformat-security<br>
&gt;&nbsp;&nbsp; at91bootstrap: bump v3.8.10 to v3.8.12<br>
&gt;&nbsp;&nbsp; at91bootstrap: add support for at91sam9x5ek<br>
&gt;&nbsp;&nbsp; at91bootstrap: add sama5d27_som1_eksd1_uboot as default de=
fconfig<br>
&gt;&nbsp;&nbsp; at91: move at91-sdcard command to sama5.mk<br>
&gt;&nbsp;&nbsp; at91: add uboot environments<br>
&gt;&nbsp;&nbsp; at91: create fit image<br>
&gt;&nbsp;&nbsp; at91: create sdcard images for at91sam9x25 &amp; at91sam9x=
25 boards.<br>
<br>
I received this series 4 times, is it correct that the patches are all<br>
the same?<br>
<br>
<br>
&gt; <br>
&gt;&nbsp; package/boot/at91bootstrap/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 25 &#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;----<br>
&gt;&nbsp; package/boot/uboot-at91/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; | 25 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;-----<br>
&gt;&nbsp; .../patches/001-fix-Wformat-security.patch&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; | 13 &#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&gt;&nbsp; target/linux/at91/image/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; | 33 &#43;&#43;----------------<br>
&gt;&nbsp; target/linux/at91/image/sam9x.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; | 40 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&gt;&nbsp; target/linux/at91/image/sama5.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; | 38 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&gt;&nbsp; target/linux/at91/image/uboot-env.txt&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 14 &#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;<br>
&gt;&nbsp; 7 files changed, 143 insertions(&#43;), 45 deletions(-)<br>
&gt;&nbsp; create mode 100644 package/boot/uboot-at91/patches/001-fix-Wform=
at-security.patch<br>
&gt;&nbsp; create mode 100644 target/linux/at91/image/uboot-env.txt<br>
&gt; <br>
<br>
</div>
</span></font></div>
</div>
</div>
</div>
</body>
</html>

--_000_BYAPR11MB3157112B15A3B5431D6FDE4A82130BYAPR11MB3157namp_--


--===============3304265270776369559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3304265270776369559==--

