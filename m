Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00277BBA3A
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 19:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zmj8j2ILO9ByZj9nWlYD10ZJeXuucKF26vYwue3j4W4=; b=qwl
	DRn78YUfFFczxrIHoj1aXo4RRtGzC8REc8aiq7w/gi5YPd4cYVM9Er5DrWilVxvj8o4a7W0d47/IL
	+vv/Dp/SpvWyPUMNYcck27Ni206HyNflmk/kQwUnQ1JHEA5ZHhvZjTzijGd20NHMUvlOSDLX1diJj
	WPTAiQc8BJAjrojEtAibIpoKKqCX4Gc2dlOhGtHVBwIktBed6BmylAz6bzikdaaxQ9GWGyifFNtty
	3yTy/HbDZS6hp1PlQpVAPOLZaR8Ct9IgEhuKHiTEFDtCo3d0GpDmWrPTbhxl6OksxgGOrT27DPnKI
	HmnDF5qJQ46oiqPgPlXMzae3JnPp+nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRx2-00037k-7E; Mon, 23 Sep 2019 17:16:40 +0000
Received: from mail-eopbgr810072.outbound.protection.outlook.com
 ([40.107.81.72] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRwt-00037P-Ak
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 17:16:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mzWCPPXsJshGN0Wi9eZaMuYELgDnOenO7PrhMHMBbLOCBY27rvOJfRwU08vtM4pEekm8dY7TfnlMu++5gWgZlN69STbyPRMA2kO7z0xtjNKug43G59hytJQp0i4pgLyKmQ1SmJyc/CcyAk093odCIpv5rqTEGrXOmM/aoBa/Fsyp4Wxpwu4Fi7BrqwUeYv2Q3WScf2gUC6ZtcK2IAR0GUggyBFaxNk38b/nMokPS5uFE4Y+9K+EoKP8fK8SXwLrZRudl9RRGGqb799qzelBScF6+oPVhX3V/Nn0aEXXKi+AjvJBXgH+tegUHvp6LI7uCVBGq4H4ep2dfBqGyIBF6YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v0l8udjT92rrQv1Ku0198ANZeVCe2uC/ERsRZCqkRb0=;
 b=XIWvJHi5gzKaYrwVkl97DtDF/iGVx33QtKc9KjD4pNF5SeZej5Gu0uE0cc8RjZKml9DHz/xmIWdclNsK9vs3jlmMPVg3o/UN6aFUyaV/IaTj29lDID0dwkU01LOWd5fpXa+p7JnAwrXpdCKGzv0VWUUkBlcND9p9TG1JTGy6TXIU15BrxSYue2LQRVBlGtty07lV+DJAApp/C0a00GmoCpgsDT6lP8Y572iEb9mf63Hik/SjduG//H377r/TsCVEezu4oASoQQjylrAOOqT8L32ZdnmtMu5D0RH7CzpVQ0q2u7HywpvL16c68Nj90RJA3FyUkxPf1lQsUVN4Ulrc2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dataspeedinc.com; dmarc=pass action=none
 header.from=dataspeedinc.com; dkim=pass header.d=dataspeedinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dataspeedinc.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v0l8udjT92rrQv1Ku0198ANZeVCe2uC/ERsRZCqkRb0=;
 b=ZNkH/+3fiPfyI8eDnyqvNTAUXEvPj1r+9H1tmNjgN112Ue/kFYiz1izoPP//MBqYg4obE+l4k7zfKySWY9hQbx/hlSDBCd9pTkI/YQAr6cdQIIRh+nbxn9hdsPjo/XgMjCsaSvrZRZlsI2TbcDE6RFBJ+BHfbnd5PP7+YQu2tgE=
Received: from DM5PR2001MB1740.namprd20.prod.outlook.com (10.172.47.146) by
 DM5PR2001MB1883.namprd20.prod.outlook.com (10.174.177.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Mon, 23 Sep 2019 17:16:28 +0000
Received: from DM5PR2001MB1740.namprd20.prod.outlook.com
 ([fe80::8da9:c43c:a062:10e5]) by DM5PR2001MB1740.namprd20.prod.outlook.com
 ([fe80::8da9:c43c:a062:10e5%11]) with mapi id 15.20.2284.023; Mon, 23 Sep
 2019 17:16:28 +0000
From: Shannon Barber <sbarber@dataspeedinc.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: QMI data mode cannot set raw-ip due to active device
Thread-Index: AQHVci71XnJlZwocak2EHbhxuFQQcw==
Date: Mon, 23 Sep 2019 17:16:28 +0000
Message-ID: <DM5PR2001MB17402BC28B751FE130CF4B8FD1850@DM5PR2001MB1740.namprd20.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sbarber@dataspeedinc.com; 
x-originating-ip: [69.14.38.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77d0a098-7cac-4fbb-fc43-08d74049c560
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR2001MB1883; 
x-ms-traffictypediagnostic: DM5PR2001MB1883:
x-microsoft-antispam-prvs: <DM5PR2001MB1883E621FCDD489621E322D0D1850@DM5PR2001MB1883.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(376002)(39830400003)(396003)(136003)(199004)(189003)(6436002)(81166006)(81156014)(8676002)(66556008)(8936002)(74316002)(6506007)(316002)(102836004)(186003)(26005)(7736002)(508600001)(86362001)(19627405001)(66066001)(2351001)(9686003)(5660300002)(5640700003)(2906002)(52536014)(3846002)(6116002)(54896002)(256004)(55016002)(14454004)(33656002)(71200400001)(71190400001)(486006)(476003)(105004)(99286004)(7696005)(2501003)(6916009)(66476007)(25786009)(76116006)(64756008)(66446008)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR2001MB1883;
 H:DM5PR2001MB1740.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: dataspeedinc.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pu334PeaV7H3D5agBiM5IvkC0/1mj/eyzO7yv2OMJkfgrbp/sxDbkoJKiO0arfxj07tDpcbl7q0+nyKg/LjpZgKonK2GwBDzWA+7qgUvqAcR8x5pb7r2JJQrjQ0I/UFqvmAqLOEZFT6MgKeLDpaRvaxQZAiU3LFRzmyD/ZRbtg31xTVbV71TJhp9V0fww33SG9Tcgmpo5fkB6WMBY0EUDfU3z9jZwsTyD+5ONrK6JCWFNPLP3Y2CbHWD+HK+FogHoQrjWfQfJCH9NGUCe5fUpLq9xJmnxADafqYDXYHAtObpb0Mmm3hx+1dI+mlyqf2984M8ceHfNJ3ZkMr8eF3HUSjY8WDCG6cFcAr1SOAhAX8VMknp8I0H0twFpV45nTwUpUP9HwidjSk+fkNCN/qfzhA9S3k+63G/YxHcfvzYK0o=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dataspeedinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77d0a098-7cac-4fbb-fc43-08d74049c560
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 17:16:28.1093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ce47be4-4692-4099-b579-8e16cc2b4dfb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fkH//D3Qmp5KKUuYL61LPuEZwUgAzY2g8AOBrDOsxbT25gDRYo3QaVIwRBe9x2ZN4wq3GcQ+3NxZPYcLe6wPfkgaBvfWyuIXQIL/SwUkKS8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR2001MB1883
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_101631_518171_9FBD5277 
X-CRM114-Status: UNSURE (   2.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] QMI data mode cannot set raw-ip due to active device
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
Content-Type: multipart/mixed; boundary="===============7497408965777558579=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7497408965777558579==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR2001MB17402BC28B751FE130CF4B8FD1850DM5PR2001MB1740_"

--_000_DM5PR2001MB17402BC28B751FE130CF4B8FD1850DM5PR2001MB1740_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm doing several builds and testing different devices and this issue is pe=
rsistent on the x86_64 build for the PC Engine APU hardware.
(I did not encounter it on the Espressobin v7 hardware.)

I have several modems but I am testing with a Sierra Wireless MC7455 which =
seems to be a popular one that is also raw-ip only.
As a quick-fix bringing the interface down and back up where the /lib/netif=
d/proto/qmi.sh script attempts to change-over to raw-ip seems to work but I=
'm not certain if its "the right way" to fix this issue. It seems to take a=
 while so I think it's retrying later and working the second time.


                echo "Device does not support 802.3 mode. Informing driver =
of raw-ip only for $ifname .."
                ifconfig $ifname down
                echo "Y" > /sys/class/net/$ifname/qmi/raw_ip
                ifconfig $ifname up


Some snippets from the kernel log:

[    8.744638] qmi_wwan 1-1.3:1.8: cdc-wdm0: USB WDM device
[    8.751778] qmi_wwan 1-1.3:1.8 wwan0: register 'qmi_wwan' at usb-0000:00=
:13.0-1.3, WWAN/QMI device, fa:8c:eb:d2:d5:df
[    8.765196] qmi_wwan 1-1.3:1.10: cdc-wdm1: USB WDM device
[    8.772501] qmi_wwan 1-1.3:1.10 wwan1: register 'qmi_wwan' at usb-0000:0=
0:13.0-1.3, WWAN/QMI device, fa:8c:eb:d2:d5:df
[    8.784460] usbcore: registered new interface driver qmi_wwan
[    8.793076] usbcore: registered new interface driver rndis_host
[    8.800987] usbcore: registered new interface driver sierra
[    8.806989] usbserial: USB Serial support registered for Sierra USB mode=
m
...
[   13.569617] qmi_wwan 1-1.3:1.8 wwan0: Cannot change a running device



--_000_DM5PR2001MB17402BC28B751FE130CF4B8FD1850DM5PR2001MB1740_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm doing several builds and testing different devices and this issue is pe=
rsistent on the x86_64 build for the PC Engine APU hardware.<br>
(I did not encounter it on the Espressobin v7 hardware.)<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I have several modems but I am testing with a Sierra Wireless MC7455 which =
seems to be a popular one that is also raw-ip only.<br>
As a quick-fix bringing the interface down and back up where the /lib/netif=
d/proto/qmi.sh script attempts to change-over to raw-ip seems to work but I=
'm not certain if its &quot;the right way&quot; to fix this issue. It seems=
 to take a while so I think it's retrying
 later and working the second time.<br>
<br>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; echo &quot;De=
vice does not support 802.3 mode. Informing driver of raw-ip only for $ifna=
me ..&quot;<br>
</span>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ifconfig $ifna=
me down<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; echo &quot;Y&q=
uot; &gt; /sys/class/net/$ifname/qmi/raw_ip<br>
</div>
<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ifconfig $ifn=
ame up</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Some snippets from the kernel log:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>[ &nbsp; &nbsp;8.744638] qmi_wwan 1-1.3:1.8: cdc-wdm0: USB WDM device=
<br>
</span>
<div>[ &nbsp; &nbsp;8.751778] qmi_wwan 1-1.3:1.8 wwan0: register 'qmi_wwan'=
 at usb-0000:00:13.0-1.3, WWAN/QMI device, fa:8c:eb:d2:d5:df<br>
</div>
<div>[ &nbsp; &nbsp;8.765196] qmi_wwan 1-1.3:1.10: cdc-wdm1: USB WDM device=
<br>
</div>
<div>[ &nbsp; &nbsp;8.772501] qmi_wwan 1-1.3:1.10 wwan1: register 'qmi_wwan=
' at usb-0000:00:13.0-1.3, WWAN/QMI device, fa:8c:eb:d2:d5:df<br>
</div>
<div>[ &nbsp; &nbsp;8.784460] usbcore: registered new interface driver qmi_=
wwan<br>
</div>
<div>[ &nbsp; &nbsp;8.793076] usbcore: registered new interface driver rndi=
s_host<br>
</div>
<div>[ &nbsp; &nbsp;8.800987] usbcore: registered new interface driver sier=
ra<br>
</div>
<span>[ &nbsp; &nbsp;8.806989] usbserial: USB Serial support registered for=
 Sierra USB modem</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
...</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
[ &nbsp; 13.569617] qmi_wwan 1-1.3:1.8 wwan0: Cannot change a running devic=
e</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<br>
</body>
</html>

--_000_DM5PR2001MB17402BC28B751FE130CF4B8FD1850DM5PR2001MB1740_--


--===============7497408965777558579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7497408965777558579==--

