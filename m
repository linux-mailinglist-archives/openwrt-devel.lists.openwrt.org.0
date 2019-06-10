Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC783B825
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 17:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aBnGHjgk0wnxYzZJoJoGkknqBmwyrDVBbJAFjjcpO6s=; b=N7v2ikZS4SqTIEaSpvGFtsJoF
	TkQl7nmiqK8MkvRrUX9sIOXPJnUcvubJw2m3MNG2vxfTlwn27ieC/T5o4GtPq6VCZR7OfKlce4cCI
	R8yqUub1p6lzAsgYyu2s/PBqQEHrpjE3mA+YrBpFStDoCh+1n2FTbsAt0d7zcoGUA6ZtRkonVL8iw
	dc1Qj7hhR2kg4qF//oq0HPfmnxVLDYMPEZKaGdCeCv9yiYuTgARrIPewPUvrC0cmevgePRwVR09g9
	8x058R8MpzcgPndaUvZeJT2g94NZS0kqF2Kqj+iJbMpOlU0bacdaVRtA0tSAdPqpa+fYyJepnwiO2
	u/6Yb6yPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haM2b-0005T9-O3; Mon, 10 Jun 2019 15:16:57 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haM2P-0005RM-P1
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 15:16:49 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,575,1557212400"; d="scan'208,217";a="36875927"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2019 08:16:41 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Jun 2019 08:16:41 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 10 Jun 2019 08:16:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8QJqZAqSQVLJdpaKHpJavQgonsK7jiqiOQ07HqyKsjg=;
 b=2uWo3fOFCFde0QOfIZuhcTEi5mfZTxz0tt3u42QS8weccwjLH9rh0RGL0lojH5ZyYNy0qG4B0toNayPOMKWnCeWMTmCDegqqoIQf2OqGBOWQcPhxNax4WKqSbKhQQuRYvm00SuZayoFuyi3tpKIsNXg0ckp7aN84K+9QVoDxSdo=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3751.namprd11.prod.outlook.com (20.178.238.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 15:16:38 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c05:e2:ad3d:58b1]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c05:e2:ad3d:58b1%3]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 15:16:38 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <hauke@hauke-m.de>, <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] [patch v1 07/11] at91bootstrap: add
 sama5d27_som1_eksd1_uboot as default defconfig
Thread-Index: AQHVHp4EvqIsvN0rTEWIOmy5eMTTlKaVAIcG
Date: Mon, 10 Jun 2019 15:16:38 +0000
Message-ID: <BYAPR11MB31570867AA6B3B0FD55E22C982130@BYAPR11MB3157.namprd11.prod.outlook.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>
 <18636f3c7cf529c618ea532d749e980cd990c9ad.1559260744.git.sandeep.sheriker@microchip.com>,
 <c86f4b62-f54b-f1fd-9f61-faf6f0110456@hauke-m.de>
In-Reply-To: <c86f4b62-f54b-f1fd-9f61-faf6f0110456@hauke-m.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a66ecb9-fbce-41d2-6ef5-08d6edb6a29c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR11MB3751; 
x-ms-traffictypediagnostic: BYAPR11MB3751:
x-microsoft-antispam-prvs: <BYAPR11MB3751B160C2047921B38700F082130@BYAPR11MB3751.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(136003)(39860400002)(376002)(189003)(199004)(99286004)(81156014)(76176011)(186003)(81166006)(7696005)(102836004)(26005)(6506007)(53546011)(486006)(72206003)(6436002)(2501003)(7736002)(3846002)(6116002)(8936002)(66066001)(52536014)(71200400001)(74316002)(476003)(8676002)(11346002)(446003)(5660300002)(71190400001)(19627405001)(33656002)(55016002)(9686003)(86362001)(229853002)(6246003)(54896002)(25786009)(478600001)(256004)(2906002)(64756008)(6606003)(53936002)(66556008)(66476007)(66946007)(14444005)(73956011)(76116006)(68736007)(316002)(110136005)(66446008)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3751;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OY6Jrs3U/K4wkLc/xW5lGLhDNyEk2/Hv0weI35NyTLH5akbe8kQpqiEdFoJBJ0LlY+HkBjmhquHjuE6wORFVrW7UPAgdyfPlno5w1xpYakLGNwP81Z4zdlZk2kh3V5C3GjpOYt4mrlyaAfyJlncJBxeY77npwMjM1+XFrdQaLVDEFI1Qo+eOzMyZXkzBVmMzOPvfP/ytMvEISYvTDudaIv2YB/ebFFrkTsc7dkZ7TZ0vAuzvXrP34605yjoguMEQoCDQc0u7qqUvUNq6KbSso5sXnw3I3WECq4wgvhcPnKFcA3VCEIISsFp9vabSrsVP2Fgsn7+EkKJP+9GxTw7uNFpPkoIgRDTWQIbbkXYBNyS84LmSYntGFy6c/2dRNinoOXIoDBKEEtSSX72qEBo8a3nIYA9ubtzN5rSaTj2ySQk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a66ecb9-fbce-41d2-6ef5-08d6edb6a29c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 15:16:38.5826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sandeepsheriker.mallikarjun@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3751
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_081645_972688_FB8DD8BB 
X-CRM114-Status: UNSURE (   7.56  )
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
Subject: Re: [OpenWrt-Devel] [patch v1 07/11] at91bootstrap: add
 sama5d27_som1_eksd1_uboot as default defconfig
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
Content-Type: multipart/mixed; boundary="===============2551173240403952456=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2551173240403952456==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB31570867AA6B3B0FD55E22C982130BYAPR11MB3157namp_"

--_000_BYAPR11MB31570867AA6B3B0FD55E22C982130BYAPR11MB3157namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Hauke Mehrtens,

  This patch will build images for sd1 interface (i.e sama5d27_som1_eksd1_u=
boot defconfig)  instead of sd interface (i.e sama5d27_som1_eksd_uboot) and=
 fix the indention problems


Regards,

Sandeep Sheriker

________________________________
From: Hauke Mehrtens <hauke@hauke-m.de>
Sent: Sunday, June 9, 2019 1:31 AM
To: Sandeep Sheriker Mallikarjun - C17018; openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] [patch v1 07/11] at91bootstrap: add sama5d27_s=
om1_eksd1_uboot as default defconfig

External E-Mail


Hi,

The description does not match the patch. As far as I understand the
patch it is only fixing some indention problems.

On 5/31/19 2:06 AM, Sandeep Sheriker M wrote:
> Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
> ---
>  package/boot/at91bootstrap/Makefile | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91boots=
trap/Makefile
> index 6496b5a..1c07e21 100644
> --- a/package/boot/at91bootstrap/Makefile
> +++ b/package/boot/at91bootstrap/Makefile
> @@ -128,9 +128,9 @@ AT91BOOTSTRAP_TARGETS :=3D \
>      sama5d4_xplainednf_uboot_secure \
>      sama5d4_xplaineddf_uboot_secure \
>      sama5d4_xplainedsd_uboot_secure \
> -     sama5d27_som1_eksd_uboot \
> -     sama5d27_som1_ekqspi_uboot \
> -     sama5d2_ptc_eknf_uboot \
> +    sama5d27_som1_eksd1_uboot \
> +    sama5d27_som1_ekqspi_uboot \
> +    sama5d2_ptc_eknf_uboot \
>      sama5d2_ptc_eksd_uboot
>
>  define Build/Compile
>


--_000_BYAPR11MB31570867AA6B3B0FD55E22C982130BYAPR11MB3157namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi Hauke Mehrtens,</p>
<p style=3D"margin-top:0;margin-bottom:0">&nbsp; This patch will build imag=
es for sd1 interface (<font size=3D"2"><span style=3D"font-size:11pt;">i.e =
sama5d27_som1_eksd1_uboot defconfig)&nbsp; instead of
<font size=3D"2"><span style=3D"font-size:11pt;">sd interface (i.e sama5d27=
_som1_eksd_uboot) and fix the
<font size=3D"2"><span style=3D"font-size:11pt;">indention problems</span><=
/font></span></font></span></font></p>
<p style=3D"margin-top:0;margin-bottom:0"><font size=3D"2"><span style=3D"f=
ont-size:11pt;"><font size=3D"2"><span style=3D"font-size:11pt;"><font size=
=3D"2"><span style=3D"font-size:11pt;"><br>
</span></font></span></font></span></font></p>
<p style=3D"margin-top:0;margin-bottom:0"><font size=3D"2"><span style=3D"f=
ont-size:11pt;"><font size=3D"2"><span style=3D"font-size:11pt;"><font size=
=3D"2"><span style=3D"font-size:11pt;">Regards,</span></font></span></font>=
</span></font></p>
<p style=3D"margin-top:0;margin-bottom:0"><font size=3D"2"><span style=3D"f=
ont-size:11pt;"><font size=3D"2"><span style=3D"font-size:11pt;"><font size=
=3D"2"><span style=3D"font-size:11pt;">Sandeep Sheriker</span></font></span=
></font></span></font><br>
</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Hauke Mehrtens &lt;=
hauke@hauke-m.de&gt;<br>
<b>Sent:</b> Sunday, June 9, 2019 1:31 AM<br>
<b>To:</b> Sandeep Sheriker Mallikarjun - C17018; openwrt-devel@lists.openw=
rt.org<br>
<b>Subject:</b> Re: [OpenWrt-Devel] [patch v1 07/11] at91bootstrap: add sam=
a5d27_som1_eksd1_uboot as default defconfig</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">External E-Mail<br>
<br>
<br>
Hi,<br>
<br>
The description does not match the patch. As far as I understand the<br>
patch it is only fixing some indention problems.<br>
<br>
On 5/31/19 2:06 AM, Sandeep Sheriker M wrote:<br>
&gt; Signed-off-by: Sandeep Sheriker M &lt;sandeep.sheriker@microchip.com&g=
t;<br>
&gt; ---<br>
&gt;&nbsp; package/boot/at91bootstrap/Makefile | 6 &#43;&#43;&#43;---<br>
&gt;&nbsp; 1 file changed, 3 insertions(&#43;), 3 deletions(-)<br>
&gt; <br>
&gt; diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91bo=
otstrap/Makefile<br>
&gt; index 6496b5a..1c07e21 100644<br>
&gt; --- a/package/boot/at91bootstrap/Makefile<br>
&gt; &#43;&#43;&#43; b/package/boot/at91bootstrap/Makefile<br>
&gt; @@ -128,9 &#43;128,9 @@ AT91BOOTSTRAP_TARGETS :=3D \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sama5d4_xplainednf_uboot_secure \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sama5d4_xplaineddf_uboot_secure \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sama5d4_xplainedsd_uboot_secure \<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; sama5d27_som1_eksd_uboot \<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; sama5d27_som1_ekqspi_uboot \<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; sama5d2_ptc_eknf_uboot \<br>
&gt; &#43;&nbsp;&nbsp;&nbsp; sama5d27_som1_eksd1_uboot \<br>
&gt; &#43;&nbsp;&nbsp;&nbsp; sama5d27_som1_ekqspi_uboot \<br>
&gt; &#43;&nbsp;&nbsp;&nbsp; sama5d2_ptc_eknf_uboot \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sama5d2_ptc_eksd_uboot<br>
&gt;&nbsp; <br>
&gt;&nbsp; define Build/Compile<br>
&gt; <br>
<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_BYAPR11MB31570867AA6B3B0FD55E22C982130BYAPR11MB3157namp_--


--===============2551173240403952456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2551173240403952456==--

