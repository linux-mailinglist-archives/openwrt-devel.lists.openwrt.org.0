Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DD93B850
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 17:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6fcJZ6XougoGIQuNFIsMIfie0WbagZOvnqVh0OXsq68=; b=q10ghixr28pYVuy1Ko/yz0B9X
	eZFIua3XzMGM1J36OLZ8B+5dTMBgb13zsC3OzKdg9lZzmR5ngfmmieNESsRXoJuZ+p4qlBowrm3Rx
	Hd3dP8Z+Ur4WiGGqtSXrH+jiDUdf0rcPsNWcQo99OQxK3cGyNAUh6nQzZ7Zw+LthWJDW1bDW6VGCz
	kCYUnA9BKkfw1drL4ZCLfOErOuoby6Ekp7VMENDd9TAy0+u50RTh6Tk7NtgrHtWdbuXOuv6yK3VPK
	h5YQNkUjdr4vzFWIg0ZMh9HlWNTA4ZYuscxGO/KVasA0Gf5yKj0bcRYS8XirjocOfEvl081FMNULi
	DHsdddJcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMDP-00019E-57; Mon, 10 Jun 2019 15:28:07 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMD0-0000sK-2g
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 15:27:44 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,575,1557212400"; d="scan'208,217";a="38218314"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2019 08:27:39 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Jun 2019 08:27:37 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 10 Jun 2019 08:27:37 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8T4T0v0qGqcnBvpZr0tdby3T+ZXw8m6ePfyMmkW6VI=;
 b=jjcb0JOhkfIleyMMqYcry//5o8RZoR/sIsQ5o/ohRbsED6N/hEYubQkQsu1out8VthAKKD/A6ESfENJjzNfYwwzKj3ecH362s4RLm/OhlEva230sG9Ip0nGDRGHBJH5a1lLXf/vCKRbUrWXkzg7YA9AGZ73m1p2GhIPGqZb1a28=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3061.namprd11.prod.outlook.com (20.177.226.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 15:27:36 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c05:e2:ad3d:58b1]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c05:e2:ad3d:58b1%3]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 15:27:36 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <hauke@hauke-m.de>, <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] [patch v1 00/11] at91 patch series.
Thread-Index: AQHVHrrOCyxZ+fPKfE69vIqP4Tuw6KaVA1f5
Date: Mon, 10 Jun 2019 15:27:36 +0000
Message-ID: <BYAPR11MB3157E6513774DB757A32FFE282130@BYAPR11MB3157.namprd11.prod.outlook.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>,
 <4b76386e-6af0-5be7-e222-31b564cb567e@hauke-m.de>
In-Reply-To: <4b76386e-6af0-5be7-e222-31b564cb567e@hauke-m.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 754dbdc1-ec0d-44c6-c4c3-08d6edb82ae8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB3061; 
x-ms-traffictypediagnostic: BYAPR11MB3061:
x-microsoft-antispam-prvs: <BYAPR11MB3061DF3F0A357C233EE5135482130@BYAPR11MB3061.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:147;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(376002)(366004)(346002)(396003)(199004)(189003)(8936002)(72206003)(53936002)(54896002)(478600001)(229853002)(5660300002)(9686003)(55016002)(14444005)(256004)(6606003)(66476007)(66556008)(64756008)(14454004)(11346002)(26005)(446003)(486006)(476003)(66946007)(25786009)(73956011)(6436002)(6246003)(76116006)(186003)(66446008)(7736002)(7696005)(99286004)(76176011)(81156014)(102836004)(81166006)(53546011)(66066001)(71190400001)(71200400001)(110136005)(8676002)(19627405001)(52536014)(74316002)(6506007)(3846002)(2906002)(6116002)(2501003)(33656002)(68736007)(86362001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3061;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: maQs9URZVQpo50g17kuf+5hwv3cE7tvwIWgpUZYqYI/sxZnmfCZlHPT+sQ4wB55Tde9Awyy4JkAUv/cBe7SFUYjgTQMv3HTutjSgLQ4dSYgA9OHWzyqCHSQlj14DQmYJ076i+juI3tFMEUYqp/scNkecWkDutKL1O8+23ZxON/W4RF1ddZ1UlqiZpgSRlB+bMKmMvR1s7N6pdBTZ9mpEEy/Z+3OaCPP+9qmrFec9YIzYU+0bPRrj2JulhFXNeqDSarE/9b9ROb/qMvCy8yi4kVVpC8Wiz8ZB9KfpttgWsWeU3gnrUwOFtJFBbJqZ0aV5AfsrlZvlv1w6e4veontYG3eX0eiTI4/JBRAWqfs5LvupxAPAHUDhAtP2NmG+f+jAdO2mkQcB7hx2bRsXBoi7wS4nFdqYJHq2zIGghIzOhTU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 754dbdc1-ec0d-44c6-c4c3-08d6edb82ae8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 15:27:36.7997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sandeepsheriker.mallikarjun@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_082742_594581_CD315E80 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============4024126890328072503=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4024126890328072503==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3157E6513774DB757A32FFE282130BYAPR11MB3157namp_"

--_000_BYAPR11MB3157E6513774DB757A32FFE282130BYAPR11MB3157namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Haukr Mehrten,

     Please ignore the patch v1 00/11. I will rework on this patch and send=
 a new patch soon.


if your ok with rest of the patches ? then, Please apply them.


Regards,

Sandeep Sheriker M


________________________________
From: Hauke Mehrtens <hauke@hauke-m.de>
Sent: Sunday, June 9, 2019 4:59 AM
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

Hi,

I run into the following build problem with these patches:

rm -f
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9x25ek-ext4-sdcard.img.gz.boot
mkfs.fat -C
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9x25ek-ext4-sdcard.img.gz.boot
65536
mkfs.fat 4.1 (2017-01-24)
mcopy -i
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9x25ek-ext4-sdcard.img.gz.boot
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/at91sam9x25ek-fit-zImage.itb
::at91sam9x25ek-fit.itb
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/at91sam9x25ek-fit-zImage.itb:
No such file or directory
make[5]: *** [Makefile:91:
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9x25ek-ext4-sdcard.img.gz]
Error 1
make[5]: Leaving directory
'/home/hauke/openwrt/openwrt/target/linux/at91/image'
make[4]: *** [Makefile:25: install] Error 2
make[4]: Leaving directory '/home/hauke/openwrt/openwrt/target/linux/at91'
make[3]: *** [Makefile:13: install] Error 2
make[3]: Leaving directory '/home/hauke/openwrt/openwrt/target/linux'
time: target/linux/install#37.01#6.26#43.54
make[2]: *** [target/Makefile:25: target/linux/install] Error 2
make[2]: Leaving directory '/home/hauke/openwrt/openwrt'
make[1]: *** [target/Makefile:19:
/home/hauke/openwrt/openwrt/staging_dir/target-arm_arm926ej-s_musl_eabi/sta=
mp/.target_install]
Error 2
make[1]: Leaving directory '/home/hauke/openwrt/openwrt'
make: *** [/home/hauke/openwrt/openwrt/include/toplevel.mk:218: world]
Error 2


hauke@hauke-t480:~/openwrt/openwrt$ ./scripts/diffconfig.sh
CONFIG_TARGET_at91=3Dy
CONFIG_TARGET_at91_sam9x=3Dy
CONFIG_TARGET_MULTI_PROFILE=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9263ek=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g15ek=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g20ek=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g20ek_2mmc=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g25ek=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g35ek=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9m10g45ek=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9x25ek=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9x35ek=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_lmu5000=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_tny_a9260=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_tny_a9263=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_tny_a9g20=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_usb_a9260=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_usb_a9263=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_usb_a9g20=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_ethernut5=3Dy
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_wb45n=3Dy
CONFIG_TARGET_ALL_PROFILES=3Dy
hauke@hauke-t480:~/openwrt/openwrt$ ls -al
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/at91sam9x25ek-*
-rw-r--r-- 1 hauke hauke 3607738 Jun  9 13:56
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/at91sam9x25ek-uImage
hauke@hauke-t480:~/openwrt/openwrt$




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


--_000_BYAPR11MB3157E6513774DB757A32FFE282130BYAPR11MB3157namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi Haukr Mehrten,</p>
<p style=3D"margin-top:0;margin-bottom:0">&nbsp;&nbsp;&nbsp;&nbsp; Please i=
gnore the <span>patch v1 00/11. I will rework on this patch
</span>and send a new patch soon.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">if your ok with rest of the patch=
es ? then, Please apply them.<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0;margin-bottom:0">Sandeep Sheriker M<br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Hauke Mehrtens &lt;=
hauke@hauke-m.de&gt;<br>
<b>Sent:</b> Sunday, June 9, 2019 4:59 AM<br>
<b>To:</b> Sandeep Sheriker Mallikarjun - C17018; openwrt-devel@lists.openw=
rt.org<br>
<b>Subject:</b> Re: [OpenWrt-Devel] [patch v1 00/11] at91 patch series.</fo=
nt>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
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
<br>
Hi,<br>
<br>
I run into the following build problem with these patches:<br>
<br>
rm -f<br>
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9x25ek-ext4-sdcard.img.gz.boot<br=
>
mkfs.fat -C<br>
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9x25ek-ext4-sdcard.img.gz.boot<br=
>
65536<br>
mkfs.fat 4.1 (2017-01-24)<br>
mcopy -i<br>
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9x25ek-ext4-sdcard.img.gz.boot<br=
>
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/at91sam9x25ek-fit-zImage.itb<br>
::at91sam9x25ek-fit.itb<br>
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/at91sam9x25ek-fit-zImage.itb:<br>
No such file or directory<br>
make[5]: *** [Makefile:91:<br>
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9x25ek-ext4-sdcard.img.gz]<br>
Error 1<br>
make[5]: Leaving directory<br>
'/home/hauke/openwrt/openwrt/target/linux/at91/image'<br>
make[4]: *** [Makefile:25: install] Error 2<br>
make[4]: Leaving directory '/home/hauke/openwrt/openwrt/target/linux/at91'<=
br>
make[3]: *** [Makefile:13: install] Error 2<br>
make[3]: Leaving directory '/home/hauke/openwrt/openwrt/target/linux'<br>
time: target/linux/install#37.01#6.26#43.54<br>
make[2]: *** [target/Makefile:25: target/linux/install] Error 2<br>
make[2]: Leaving directory '/home/hauke/openwrt/openwrt'<br>
make[1]: *** [target/Makefile:19:<br>
/home/hauke/openwrt/openwrt/staging_dir/target-arm_arm926ej-s_musl_eabi/sta=
mp/.target_install]<br>
Error 2<br>
make[1]: Leaving directory '/home/hauke/openwrt/openwrt'<br>
make: *** [/home/hauke/openwrt/openwrt/include/toplevel.mk:218: world]<br>
Error 2<br>
<br>
<br>
hauke@hauke-t480:~/openwrt/openwrt$ ./scripts/diffconfig.sh<br>
CONFIG_TARGET_at91=3Dy<br>
CONFIG_TARGET_at91_sam9x=3Dy<br>
CONFIG_TARGET_MULTI_PROFILE=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9263ek=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g15ek=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g20ek=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g20ek_2mmc=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g25ek=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9g35ek=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9m10g45ek=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9x25ek=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_at91sam9x35ek=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_lmu5000=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_tny_a9260=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_tny_a9263=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_tny_a9g20=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_usb_a9260=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_usb_a9263=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_usb_a9g20=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_ethernut5=3Dy<br>
CONFIG_TARGET_DEVICE_at91_sam9x_DEVICE_wb45n=3Dy<br>
CONFIG_TARGET_ALL_PROFILES=3Dy<br>
hauke@hauke-t480:~/openwrt/openwrt$ ls -al<br>
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/at91sam9x25ek-*<br>
-rw-r--r-- 1 hauke hauke 3607738 Jun&nbsp; 9 13:56<br>
/home/hauke/openwrt/openwrt/build_dir/target-arm_arm926ej-s_musl_eabi/linux=
-at91_sam9x/at91sam9x25ek-uImage<br>
hauke@hauke-t480:~/openwrt/openwrt$<br>
<br>
<br>
<br>
<br>
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
</body>
</html>

--_000_BYAPR11MB3157E6513774DB757A32FFE282130BYAPR11MB3157namp_--


--===============4024126890328072503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4024126890328072503==--

