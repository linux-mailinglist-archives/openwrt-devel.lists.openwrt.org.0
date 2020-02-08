Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8954515622B
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Feb 2020 01:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nZmCxMTr8AMLmqtWT/sPEmKfC11VPO2RWuWpiJagGm4=; b=i7U
	yZvL4fE/qB2PX6HOOCD4YcWGN7Z350sa8HpwafkF718VC19jOFaxSIyHQ74cGs6i8wAbzbESb2cls
	hv6v+Si7XqhfvoGl1p7VeV6fcoO2AyD7Wv6RqLaYtoP+ExZ64pID7xk01XgUgvSSXGz7UxrEcI6r/
	0yT2YgcorsWEtoLYODliTGknDmGQKQ6FSbz6isuW8twkPY6KEuZjV46lKkxPxdEOzF/oPJTR0jgtx
	NTbtnsVEeqatKdH8yH9BPdZqTohg3zdIHuG0fZrXNWtsfbjMHdQmclxGHobdXxnl7ADMP2dABXHXP
	LyLDQvyPpuA9xzmbhz7FBRNqclND8qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0EQ1-0007Oj-PA; Sat, 08 Feb 2020 00:56:21 +0000
Received: from mail-eopbgr120042.outbound.protection.outlook.com
 ([40.107.12.42] helo=FRA01-PR2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0EPr-0007Nf-Ie
 for openwrt-devel@lists.openwrt.org; Sat, 08 Feb 2020 00:56:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LVVc5QmZ3NKqZYs+XMrJdJGEwbHam7XzDoWk9kZOilAGVm9C2mhWRmoZQ5ULAXw33IqNIAVS3wKfIWREjGfKMSCfHw2mYfA9jn5YTpog1qd8FY/reKPbdcm5e/IvwrMEvHwtMb23PDQnWja4i6RftDSbQ1qiSLgHtOvDetRMrVtRWvzlOSwaClyoFDbenSuy/C2QL1K3xqcORdrvUj3QodxJWDh6BgVoyHMC3PEGSXAli6XoAccjMfO6/alMGxw+bJZ+t0oEIhYmlppzzMjAKxhW+CE+lXRjRm/kcs+OlMErFgE7gXIVpB2j4zyYMBiAA9EsRZYGFgd/c6QnBk1jMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vq8GvdS0Z99x8qqcYg+TSQqUoIJinmG+K/aIVdUQ2Vw=;
 b=gk5BaPDELjX6fn7d9orVfmfpv8NA0wBEHFWqwkVQgLA748rtvjgWpXNXlWtL5y2fCSruAI+D5etLyWJJKeVb0fnOuIpnKLpyEiCcgv56RtgSzxOWz+y/VHA/tOYR+YQbyDCaM3deYPbj77MLoNkMgyJw/1yHH1nTPfYtBAxUbajrqnVPEzUx4poRv4tW0EkHkhF30BzzzPpQeB7gKBGgn0r4hc1D8O7HZbKwxRcLHKUu3aIGOBPhI6PDs6p9jVrM1sTKE4hA2swbtXW+ou9ecAPUQAFsipmkZvItIRNTyJLk1mSGGVOD1fEuYAcsrRivZPvxZ7uzVqN5rUiuqKoNxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mail.polimi.it; dmarc=pass action=none
 header.from=mail.polimi.it; dkim=pass header.d=mail.polimi.it; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mail.polimi.it;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vq8GvdS0Z99x8qqcYg+TSQqUoIJinmG+K/aIVdUQ2Vw=;
 b=e5btiurZGAY0m8j/lpASWsz2vq5f8zqjFOVLFRmIFn+Ia8OhPeZHdsqrxzYfH76efCTadFX7nWw1IgwGTiP9ITWuQk9Fz/J72sQJO44QDRS3NWYpeg6DZxESiCDyRajzvwkontfL1IrsZPMIveX6bbNiD0/10243uwqAXT6g95W0r7lPwKIw5LOuMaZVjR5ruw+ejZ2iuSeNnzYbh2/+G6TIlbJNR08V3ZDhk1hZga8p1N1PPTqpKG4hXKhdHiuEH/3Racge8TKAFYD31/xSXtn5+t19km/tfTtifwYq22Zut+8uZ/tLp7UqIqclujl4F9OfmVsOEUmuNZXSAu0zXg==
Received: from PR1PR06MB4874.eurprd06.prod.outlook.com (20.177.208.212) by
 PR1PR06MB5739.eurprd06.prod.outlook.com (20.177.208.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Sat, 8 Feb 2020 00:56:06 +0000
Received: from PR1PR06MB4874.eurprd06.prod.outlook.com
 ([fe80::6c7d:5313:1f1d:bacc]) by PR1PR06MB4874.eurprd06.prod.outlook.com
 ([fe80::6c7d:5313:1f1d:bacc%4]) with mapi id 15.20.2707.024; Sat, 8 Feb 2020
 00:56:06 +0000
From: Luca Piccirillo <luca.piccirillo@mail.polimi.it>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: On-link routes to PtP gateway always in table main
Thread-Index: AQHV3hl5W56wPC+sB0eMAbJe+uF1DQ==
Date: Sat, 8 Feb 2020 00:56:05 +0000
Message-ID: <PR1PR06MB48740484D5A4E65BF05ACEF0C11F0@PR1PR06MB4874.eurprd06.prod.outlook.com>
Accept-Language: it-IT, en-US
Content-Language: it-IT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=luca.piccirillo@mail.polimi.it; 
x-originating-ip: [62.11.90.60]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd694e9b-dc11-41e3-de4a-08d7ac31ad92
x-ms-traffictypediagnostic: PR1PR06MB5739:
x-microsoft-antispam-prvs: <PR1PR06MB573989D09F4820B7680576F4C11F0@PR1PR06MB5739.eurprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03077579FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(376002)(136003)(39860400002)(396003)(189003)(199004)(26005)(76116006)(316002)(71200400001)(7696005)(81166006)(81156014)(8676002)(6506007)(33656002)(186003)(44832011)(786003)(2906002)(8936002)(86362001)(4744005)(9686003)(478600001)(52536014)(66446008)(6916009)(5660300002)(66556008)(64756008)(66476007)(66946007)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:PR1PR06MB5739;
 H:PR1PR06MB4874.eurprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mail.polimi.it does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 78wlXqmLdqCmbquOftEwNzIPD/s4UsGCbUoNMg6uxXJHrSFwKj7FvON2xj96rPyw/GbC1bYe2rw7thdD5p7lDNaQ/+987dv470aLHs/Wro4F483q0IKd3QhbF4cMz2Pe//TcleAUyFlSIuxTJq1ZNAus6E3n7hXQ012rdsYEre2iC/RxmygKyZ17QW5SeM5h/idJk/Q3WlegIE3pKiL/VsXKZSYES70/oV1RoNSDPzuBc4lX9Kqwo0/PBKO93Exs489xslGnXGdVSlhG47Meelo+mQl/fzKy9yd1Uzk7yLH1B0tmZgCOYi5KF0AyPw+oZX7Q8RIAOsrSm8aHVnLmMMmr9hl9yoc3GUVNQbWUzpTW2aIZgDGDWbz6EQ9IDy1cG2CbNZkT4fSzk/c6SmcFpctKaqgbXYdWJzmYMoOBTywjOiSOIvEEBZcKFzHM6l8y
x-ms-exchange-antispam-messagedata: 3hAbK9euFpL1kzHzFz3cZj4HYXzpvzl1yoppQIRyW0FZM7mrV73T5rraZ6+A4TI5ccl9Yov3P7Si5fBOPp9tpcYGn0phVqK4JkTks7wQB+4viE/jpDq0xDA+MCyDG+Zr/HPpbfMkP9ClcEyD/m74zA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mail.polimi.it
X-MS-Exchange-CrossTenant-Network-Message-Id: fd694e9b-dc11-41e3-de4a-08d7ac31ad92
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2020 00:56:05.9874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0a17712b-6df3-425d-808e-309df28a5eeb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6GXQId5wlNSEsHAJqWn71i1SNsGPV1LnjZwLPx2qvfcYxxKMIvzmnjDgiT/QSbZ9p15bk1cycuveEcQDRVtfig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1PR06MB5739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_165612_416214_F94F7C57 
X-CRM114-Status: UNSURE (   0.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.12.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] On-link routes to PtP gateway always in table main
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
Content-Type: multipart/mixed; boundary="===============2909136233672806047=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2909136233672806047==
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_PR1PR06MB48740484D5A4E65BF05ACEF0C11F0PR1PR06MB4874eurp_"

--_000_PR1PR06MB48740484D5A4E65BF05ACEF0C11F0PR1PR06MB4874eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable


Hi, I was playing with multiple wan interfaces and I noticed something I co=
uldn=92t understand.  I have two pppoe interfaces, =93wan and =93test=94, i=
p4table is set to =93main=94 and =93iptv=94 respectively. Here is what I ge=
t:

root@OpenWrt:~# ip route show table all | grep pppoe
default via 213.205.53.196 dev pppoe-test  table iptv  proto static  metric=
 2
default via 213.205.53.196 dev pppoe-wan  proto static
213.205.53.196 dev pppoe-wan  proto kernel  scope link  src 62.11.90.x
213.205.53.196 dev pppoe-test  proto kernel  scope link  src 62.11.84.x
local 62.11.84.x dev pppoe-test  table local  proto kernel  scope host  src=
 62.11.84.x
local 62.11.90.x dev pppoe-wan  table local  proto kernel  scope host  src =
62.11.90.x

The default route for test belongs to iptv table as expected, however both =
routes to the gateway belong to main table. Is that normal? What if default=
 route on iptv table is used? Would it always exit from pppoe-test even if =
gateway ip is the same for both interfaces?

Thank you.
Luca P.

--_000_PR1PR06MB48740484D5A4E65BF05ACEF0C11F0PR1PR06MB4874eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"IT">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi, I was playing with multiple wan interfaces and I=
 noticed something I couldn=92t understand.&nbsp; I have two pppoe interfac=
es, =93wan and =93test=94, ip4table is set to =93main=94 and =93iptv=94 res=
pectively. Here is what I get:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">root@OpenWrt:~# ip route show table all | grep pppoe=
</p>
<p class=3D"MsoNormal">default via 213.205.53.196 dev pppoe-test&nbsp; tabl=
e iptv&nbsp; proto static&nbsp; metric 2</p>
<p class=3D"MsoNormal">default via 213.205.53.196 dev pppoe-wan&nbsp; proto=
 static</p>
<p class=3D"MsoNormal">213.205.53.196 dev pppoe-wan&nbsp; proto kernel&nbsp=
; scope link&nbsp; src 62.11.90.x</p>
<p class=3D"MsoNormal">213.205.53.196 dev pppoe-test&nbsp; proto kernel&nbs=
p; scope link&nbsp; src 62.11.84.x</p>
<p class=3D"MsoNormal">local 62.11.84.x dev pppoe-test&nbsp; table local&nb=
sp; proto kernel&nbsp; scope host&nbsp; src 62.11.84.x</p>
<p class=3D"MsoNormal">local 62.11.90.x dev pppoe-wan&nbsp; table local&nbs=
p; proto kernel&nbsp; scope host&nbsp; src 62.11.90.x</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The default route for test belongs to iptv table as =
expected, however both routes to the gateway belong to main table. Is that =
normal? What if default route on iptv table is used? Would it always exit f=
rom pppoe-test even if gateway ip
 is the same for both interfaces?</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you.</p>
<p class=3D"MsoNormal">Luca P.</p>
</div>
</body>
</html>

--_000_PR1PR06MB48740484D5A4E65BF05ACEF0C11F0PR1PR06MB4874eurp_--


--===============2909136233672806047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2909136233672806047==--

