Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 574611E7520
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 06:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
	MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MKBj6WvTN+zEcpoyihk3TRk+0UYMiZjPpeYtTbMYbpY=; b=rbn8UAafo8mbFBpiaw94BaHqQ
	gPnXGowIKJBB3PP8GI6AeNpxgNCiZ7NNKLJMnio3X8aZk727CFaGQrIHpFOSkWjEphu0IupdVsn79
	tynsghovBDZ3CgZJ3AWVSbetwj1NfK3xl2G98s/Ioxe0XlMTco0EzZBv/K0M88+kRXIrol1qSm52j
	DW0jNgVECkuAh3ZNC64ALaLmMio39KHI+xORlUBg44CJtTIoSCNcD7dD4SY3ON0zP8MFlCHh79W+x
	B6v7ukgkW9drhzif7M+AC09kowyMr54IGc9GQqpG9ml/hW2jqWOzwQf138aPRjxyAyk5HnvyylZRc
	0p5w9bwOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeX00-0003cy-KR; Fri, 29 May 2020 04:52:04 +0000
Received: from au-smtp-delivery-115.mimecast.com ([180.189.28.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWzs-0003c8-BL
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 04:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uon.edu.au;
 s=mimecast20191001; t=1590727906;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=s3cyBcjfHV4CkE3/ak6LJhSzNeWAoWJ13gbKt6VaPWY=;
 b=i12y8kPap0CKTHlqhAlfMkeRwL25snpmLjg+paSgbNDdr2TttTvYxPsSPUI1EcrbPziz29
 XWFUk8VezisMwFcX19VByiAwpzrxx2ekaENA4y4s19jaOwRwuNhlo4yF+l8qGKasdHxklL
 vR65AsCwLvCm2MgaWfu4uE1bieWdcqk=
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2170.outbound.protection.outlook.com [104.47.58.170])
 (Using TLS) by relay.mimecast.com with ESMTP id
 au-mta-47-KYD56DKAMkuBkUXb0pp_yA-1; Fri, 29 May 2020 14:51:43 +1000
X-MC-Unique: KYD56DKAMkuBkUXb0pp_yA-1
Received: from BYAPR19MB2984.namprd19.prod.outlook.com (2603:10b6:a03:12e::21)
 by BYAPR19MB2664.namprd19.prod.outlook.com (2603:10b6:a03:b3::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Fri, 29 May
 2020 04:51:39 +0000
Received: from BYAPR19MB2984.namprd19.prod.outlook.com
 ([fe80::8869:d004:a822:f4db]) by BYAPR19MB2984.namprd19.prod.outlook.com
 ([fe80::8869:d004:a822:f4db%5]) with mapi id 15.20.3021.030; Fri, 29 May 2020
 04:51:39 +0000
From: Evan Jobling <Evan.Jobling@uon.edu.au>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: add support for netgear R6020
Thread-Index: AQHWNXLa7g7dkjyCTUavT39ZY/QR76i+ffov
Date: Fri, 29 May 2020 04:51:39 +0000
Message-ID: <BYAPR19MB298406DBACFA2F4FB6A636C3B78F0@BYAPR19MB2984.namprd19.prod.outlook.com>
References: <BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0@BYAPR19MB2984.namprd19.prod.outlook.com>
In-Reply-To: <BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0@BYAPR19MB2984.namprd19.prod.outlook.com>
Accept-Language: en-AU, en-US
Content-Language: en-AU
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [134.148.92.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fdc093a-414b-40e8-fe3e-08d8038bf99e
x-ms-traffictypediagnostic: BYAPR19MB2664:
x-microsoft-antispam-prvs: <BYAPR19MB26641E0E662641BE9353E958B78F0@BYAPR19MB2664.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 04180B6720
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cxGqf+TmcSOOi3hV43aAOFLErpHjIFghZFw/30qmoLmO4xhghYZDb/ZZyd4UloPH9IVFbBn+lchG6E9Iy+IwNj8ZgdybMX9U1EXqep3w3rdtBeRGrEyzlMgdg7kivuHhtJwv7MZzy4y8FkMgVBPd6z0hMUI1h1mfbzc0XsIG1U5s8RHHCsrQl4AyL29RRgqXVBebsFQk717CmasQQRXrBVQxyLqwBP/+TE30LiVGdmyoTtYZi9Y44Spus9RTWhHvDQD02LZEERTcvgZDG1sIPFfnTiZLGC3Wx6C6iC69n94Y+vZJQPhROx7Rs5w4gjtlnq+HtKtaXDBXHYI9+hObowl5jnr7xFKtIbBGhA/e0M+WNbKXMmAjmFrTulJwvI8J
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR19MB2984.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(136003)(346002)(39860400002)(396003)(6916009)(19627405001)(186003)(76116006)(91956017)(99936003)(66946007)(52536014)(66556008)(66446008)(66576008)(64756008)(66476007)(478600001)(9686003)(8936002)(55016002)(8676002)(786003)(2940100002)(26005)(6506007)(86362001)(4744005)(33656002)(5660300002)(7696005)(2906002)(71200400001)(316002)(84152002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4OF2NwbbnBe02JHA9Qfox5iVwkrq6kicZzqyr7+UoAqiH1R7rbaTXcJHVpRfQ437H2jAo4LylyhiKtWcmH0ociaXl4jYJLgDkarI5XACdSh8bqCSMgiUaz3RJy/4ZTECnXLYJUhfBVYP2IIpT3zlgJTgnIcCESx7RLkgjEF2sBmeksqlAS8UErfLlfP9zVaynN6VUUD7OXpPXdL6bPc/4Z4ysM5tCMy0Pt++AA/o4K4Q8eyUlMHPd2wKJa/3uevq5pwnrVc6l8kE7opi3NhznotGcH9eu0TpxU6Z39XBOK/vkHFU+5h1wucQ9JWuLc1YYL+ljrv6cizGHsPMbotezTMSuSMS7H1aKOgA9tyavI2hxHK9BjJWB16EEcxyA3tS+iZ5Dl127oIapTdrryvoo3t5OO3rMsIjr2RGPZ+ofp4/fhbzDgaHW/FDJa0sORJfL2A8VyGpfFVS/zG62jGiUctEmlCtnb3DO/QR40BNZReCk8HDwRGMFrYy5cbvsbeC
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: uon.edu.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fdc093a-414b-40e8-fe3e-08d8038bf99e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2020 04:51:39.4100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ee903dcb-2b77-4da5-be02-c45235783dad
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GqjZFpBL31JOXQnchGR5CRa4Ws6kYfL+Dal+w9n7Wm1MHg/zlyBMmLm2LbCacJ4OF6Z2bKmc/fmlydExNRsMLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR19MB2664
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: uon.edu.au
Content-Type: multipart/mixed;
 boundary="_005_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_"
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_215156_962831_1CF6621E 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [180.189.28.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Fw: add support for netgear R6020
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--_005_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_
Content-Type: multipart/alternative;
	boundary="_000_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_"

--_000_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

>
>________________________________________
>From: Evan Jobling <Evan.Jobling@uon.edu.au>
>Sent: Friday, 29 May 2020 2:45 PM
>To: openwrt-devel@lists.openwrt.org
>Subject: add support for netgear R6020
>
>Hi All.
>
>Apologies if this isn't the correct method of submitting a patch.
>
>There was a patch on github for adding the R6020?
>
>Didn't look like it went anywhere.
>I recall issues with the LED naming on that one?
>
>Just so it doesn't get lost to time, I figured i'd email my modifications.
>
>Please find patch attached.

Apologies, I forgot to include the modifications, and only put in the new f=
ile.
Please find additional file attached.

>
> I may still have an original boot log, if you want it?
>
>Cheers,
>Evan.
>


--_000_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_
Content-Type: text/html; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"">&gt;<br>
</div>
<div>&gt;________________________________________<br>
</div>
<div>&gt;From: Evan Jobling &lt;Evan.Jobling@uon.edu.au&gt;<br>
</div>
<div>&gt;Sent: Friday, 29 May 2020 2:45 PM<br>
</div>
<div>&gt;To: openwrt-devel@lists.openwrt.org<br>
</div>
<div>&gt;Subject: add support for netgear R6020<br>
</div>
<div>&gt;<br>
</div>
<div>&gt;Hi All.<br>
</div>
<div>&gt;<br>
</div>
<div>&gt;Apologies if this isn't the correct method of submitting a patch.<=
br>
</div>
<div>&gt;<br>
</div>
<div>&gt;There was a patch on github for adding the R6020?<br>
</div>
<div>&gt;<br>
</div>
<div>&gt;Didn't look like it went anywhere.<br>
</div>
<div>&gt;I recall issues with the LED naming on that one?<br>
</div>
<div>&gt;<br>
</div>
<div>&gt;Just so it doesn't get lost to time, I figured i'd email my modifi=
cations.<br>
</div>
<div>&gt;<br>
</div>
<div>&gt;Please find patch attached.<br>
</div>
<div><br>
</div>
<div>Apologies, I forgot to include the modifications, and only put in the =
new file.</div>
<div>Please find additional file attached.</div>
<div><br>
</div>
<div>&gt;<br>
</div>
<div>&gt; I may still have an original boot log, if you want it?<br>
</div>
<div>&gt;<br>
</div>
<div>&gt;Cheers,<br>
</div>
<div>&gt;Evan.<br>
</div>
<span>&gt;</span>
<div><br>
</div>
</body>
</html>

--_000_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_--

--_005_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_
Content-Type: text/x-patch; name=r6020.diff; charset=WINDOWS-1252
Content-Description: r6020.diff
Content-Disposition: attachment; filename="r6020.diff"; size=2947;
	creation-date="Fri, 29 May 2020 04:41:16 GMT";
	modification-date="Fri, 29 May 2020 04:49:16 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCB0YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2Mjhhbl9uZXRnZWFyX3I2MDIw
LmR0cyB0YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2Mjhhbl9uZXRnZWFyX3I2MDIwLmR0cwpu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwLi4zNDkyMjczODQwCi0tLSAvZGV2
L251bGwKKysrIHRhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyOGFuX25ldGdlYXJfcjYwMjAu
ZHRzCkBAIC0wLDAgKzEsMTQ5IEBACisvZHRzLXYxLzsKKworI2luY2x1ZGUgIm10NzYyOGFuLmR0
c2kiCisKKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9pbnB1dC9pbnB1dC5oPgorCisvIHsKKwljb21wYXRpYmxlID0gIm5ldGdlYXIscjYw
MjAiLCAibWVkaWF0ZWssbXQ3NjI4YW4tc29jIjsKKwltb2RlbCA9ICJOZXRnZWFyIEFDNzUwIFI2
MDIwIjsKKworCWFsaWFzZXMgeworCQlsZWQtYm9vdCA9ICZsZWRfcG93ZXI7CisJCWxlZC1mYWls
c2FmZSA9ICZsZWRfcG93ZXI7CisJCWxlZC1ydW5uaW5nID0gJmxlZF9wb3dlcjsKKwkJbGVkLXVw
Z3JhZGUgPSAmbGVkX3Bvd2VyOworCX07CisKKwltZW1vcnlAMCB7CisJCWRldmljZV90eXBlID0g
Im1lbW9yeSI7CisJCXJlZyA9IDwweDAgMHg0MDAwMDAwPjsKKwl9OworCisJZ3Bpby1rZXlzLXBv
bGxlZCB7CisJCWNvbXBhdGlibGUgPSAiZ3Bpby1rZXlzLXBvbGxlZCI7CisJCXBvbGwtaW50ZXJ2
YWwgPSA8MjA+OworCisJCXJlc2V0IHsKKwkJCWxhYmVsID0gInJlc2V0IjsKKwkJCWdwaW9zID0g
PCZncGlvMSA2IEdQSU9fQUNUSVZFX0xPVz47CisJCQlsaW51eCxjb2RlID0gPEtFWV9SRVNUQVJU
PjsKKwkJfTsKKwl9OworCisJZ3Bpby1sZWRzIHsKKwkJY29tcGF0aWJsZSA9ICJncGlvLWxlZHMi
OworCisJCWxhbiB7CisJCQlsYWJlbCA9ICJyNjAyMDpncmVlbjpsYW4iOworCQkJZ3Bpb3MgPSA8
JmdwaW8xIDEyIEdQSU9fQUNUSVZFX0xPVz47CisJCX07CisKKwkJbGVkX3Bvd2VyOiBwb3dlciB7
CisJCQlsYWJlbCA9ICJyNjAyMDpncmVlbjpwb3dlciI7CisJCQlncGlvcyA9IDwmZ3BpbzEgMTEg
R1BJT19BQ1RJVkVfTE9XPjsKKwkJfTsKKworCQl3bGFuIHsKKwkJCWxhYmVsID0gInI2MDIwOmdy
ZWVuOndsYW4yZyI7CisJCQlncGlvcyA9IDwmZ3BpbzEgMTAgR1BJT19BQ1RJVkVfTE9XPjsKKwkJ
fTsKKworCQl3bGFuX29yYW5nZSB7CisJCQlsYWJlbCA9ICJyNjAyMDpvcmFuZ2U6d2xhbjJnIjsK
KwkJCWdwaW9zID0gPCZncGlvMSA5IEdQSU9fQUNUSVZFX0xPVz47CisJCX07CisKKwkJd2xhbjUg
eworCQkJbGFiZWwgPSAicjYwMjA6Z3JlZW46d2xhbjVnIjsKKwkJCWdwaW9zID0gPCZncGlvMSA4
IEdQSU9fQUNUSVZFX0xPVz47CisJCX07CisKKwkJd2xhbjVfb3JhbmdlIHsKKwkJCWxhYmVsID0g
InI2MDIwOm9yYW5nZTp3bGFuNWciOworCQkJZ3Bpb3MgPSA8JmdwaW8xIDcgR1BJT19BQ1RJVkVf
TE9XPjsKKwkJfTsKKwl9OworfTsKKworJnBpbmN0cmwgeworCXN0YXRlX2RlZmF1bHQ6IHBpbmN0
cmwwIHsKKwkJZ3BpbyB7CisJCQlyYWxpbmssZ3JvdXAgPSAicDBsZWRfYW4iLCAicDFsZWRfYW4i
LCAicDJsZWRfYW4iLAorCQkJCSAgICAgICAicDNsZWRfYW4iLCAicDRsZWRfYW4iLCAid2R0Iiwg
IndsZWRfYW4iOworCQkJcmFsaW5rLGZ1bmN0aW9uID0gImdwaW8iOworCQl9OworCX07Cit9Owor
Cismc3BpMCB7CisJc3RhdHVzID0gIm9rYXkiOworCisJZmxhc2hAMCB7CisJCWNvbXBhdGlibGUg
PSAiamVkZWMsc3BpLW5vciI7CisJCXJlZyA9IDwwPjsKKwkJc3BpLW1heC1mcmVxdWVuY3kgPSA8
MTAwMDAwMDA+OworCQltMjVwLGNodW5rZWQtaW8gPSA8MzI+OworCisJCXBhcnRpdGlvbnMgewor
CQkJY29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsKKwkJCSNhZGRyZXNzLWNlbGxzID0g
PDE+OworCQkJI3NpemUtY2VsbHMgPSA8MT47CisKKwkJCXBhcnRpdGlvbkAwIHsKKwkJCQlsYWJl
bCA9ICJ1LWJvb3QiOworCQkJCXJlZyA9IDwweDAgMHg0MDAwMD47CisJCQkJcmVhZC1vbmx5Owor
CQkJfTsKKworCQkJZmFjdG9yeTogcGFydGl0aW9uQDQwMDAwIHsKKwkJCQlsYWJlbCA9ICJmYWN0
b3J5IjsKKwkJCQlyZWcgPSA8MHg0MDAwMCAweDIwMDAwPjsKKwkJCQlyZWFkLW9ubHk7CisJCQl9
OworCisJCQludnJhbTogcGFydGl0aW9uQDYwMDAwIHsKKwkJCQlsYWJlbCA9ICJudnJhbSI7CisJ
CQkJcmVnID0gPDB4NjAwMDAgMHgzMDAwMD47CisJCQkJcmVhZC1vbmx5OworCQkJfTsKKworCQkJ
cGFydGl0aW9uQDkwMDAwIHsKKwkJCQljb21wYXRpYmxlID0gImRlbngsdWltYWdlIjsKKwkJCQls
YWJlbCA9ICJmaXJtd2FyZSI7CisJCQkJcmVnID0gPDB4OTAwMDAgMHg2ZjAwMDA+OworCQkJfTsK
KworCQkJcGFydGl0aW9uQDc4MDAwMCB7CisJCQkJbGFiZWwgPSAicmVzZXJ2ZWQiOworCQkJCXJl
ZyA9IDwweDc4MDAwMCAweDgwMDAwPjsKKwkJCQlyZWFkLW9ubHk7CisJCQl9OworCQl9OworCX07
Cit9OworCismd21hYyB7CisJc3RhdHVzID0gIm9rYXkiOworCW10ZC1tYWMtYWRkcmVzcyA9IDwm
bnZyYW0gMHgxMDBiMD47CisJbWVkaWF0ZWssbXRkLWVlcHJvbSA9IDwmZmFjdG9yeSAweDIwMDAw
PjsKK307CisKKyZldGhlcm5ldCB7CisJbXRkLW1hYy1hZGRyZXNzID0gPCZudnJhbSAweDEwMGIw
PjsKK307CisKKyZwY2llIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismcGNpZTAgeworCXdp
ZmlAMCwwIHsKKwkJcmVnID0gPDB4MDAwMCAwIDAgMCAwPjsKKwkJbWVkaWF0ZWssbXRkLWVlcHJv
bSA9IDwmZmFjdG9yeSAweDgwMDA+OworCQlpZWVlODAyMTEtZnJlcS1saW1pdCA9IDw1MDAwMDAw
IDYwMDAwMDA+OworCQltdGQtbWFjLWFkZHJlc3MgPSA8Jm52cmFtIDB4MTAwYjA+OworCQltdGQt
bWFjLWFkZHJlc3MtaW5jcmVtZW50ID0gPCgyKT47CisJfTsKK307Cg==
--_005_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_
Content-Type: text/x-patch; name=r6020_patch2.diff; charset=WINDOWS-1252
Content-Description: r6020_patch2.diff
Content-Disposition: attachment; filename="r6020_patch2.diff"; size=2763;
	creation-date="Fri, 29 May 2020 04:51:00 GMT";
	modification-date="Fri, 29 May 2020 04:51:16 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCB0YXJnZXQvbGludXgvcmFtaXBzL2ltYWdlL210NzZ4OC5tayB0YXJnZXQvbGlu
dXgvcmFtaXBzL2ltYWdlL210NzZ4OC5tawppbmRleCBlMjg5MGM5OGU2Li4wMzcwN2QxZGIzIDEw
MDY0NAotLS0gdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2eDgubWsKKysrIHRhcmdldC9s
aW51eC9yYW1pcHMvaW1hZ2UvbXQ3Nng4Lm1rCkBAIC0xODcsNiArMTg3LDI1IEBAIGRlZmluZSBE
ZXZpY2UvbmV0Z2Vhcl9yNjEyMAogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IG5ldGdlYXJfcjYx
MjAKIAorZGVmaW5lIERldmljZS9uZXRnZWFyX3I2MDIwCisgIEJMT0NLU0laRSA6PSA2NGsKKyAg
SU1BR0VfU0laRSA6PSA3MjcwaworICBERVZJQ0VfVElUTEUgOj0gTmV0Z2VhciBBQzc1MCBSNjAy
MAorICBERVZJQ0VfUEFDS0FHRVMgOj0ga21vZC1tdDc2eDIga21vZC11c2IyIGttb2QtdXNiLW9o
Y2kKKyAgU0VSQ09NTV9LRVJORUxfT0ZGU0VUIDo9IDB4OTAwMDAKKyAgU0VSQ09NTV9IV0lEIDo9
IENGUgorICBTRVJDT01NX0hXVkVSIDo9IEEwMDEKKyAgU0VSQ09NTV9TV1ZFUiA6PSAweDAwNDAK
KyAgSU1BR0VTICs9IGZhY3RvcnkuaW1nCisgIElNQUdFL2RlZmF1bHQgOj0gYXBwZW5kLWtlcm5l
bCB8IHBhZC10byAkJCQkKEJMT0NLU0laRSl8IGFwcGVuZC1yb290ZnMgfCBwYWQtcm9vdGZzCisg
IElNQUdFL3N5c3VwZ3JhZGUuYmluIDo9ICQkKElNQUdFL2RlZmF1bHQpIHwgYXBwZW5kLW1ldGFk
YXRhIHwgY2hlY2stc2l6ZSAkJCQkKElNQUdFX1NJWkUpCisgIElNQUdFL2ZhY3RvcnkuaW1nIDo9
IHBhZC1leHRyYSA1NzZrIHwgJCQoSU1BR0UvZGVmYXVsdCkgfCBcCisJcGFkLXRvICQkJCQoQkxP
Q0tTSVpFKSB8IHNlcmNvbS1mb290ZXIgfCBwYWQtdG8gMTI4IHwgemlwIFI2MDIwLmJpbiB8IFwK
KwlzZXJjb20tc2VhbAorZW5kZWYKK1RBUkdFVF9ERVZJQ0VTICs9IG5ldGdlYXJfcjYwMjAKKwor
CiBkZWZpbmUgRGV2aWNlL29uaW9uX29tZWdhMgogICBJTUFHRV9TSVpFIDo9IDE2MDY0awogICBE
RVZJQ0VfVkVORE9SIDo9IE9uaW9uCmRpZmYgLS1naXQgdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2
eDgvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMV9sZWRzIHRhcmdldC9saW51eC9yYW1pcHMvbXQ3
Nng4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDFfbGVkcwppbmRleCBjNjZlMTNkM2M1Li44ZDg2
MDVlNGFkIDEwMDc1NQotLS0gdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2eDgvYmFzZS1maWxlcy9l
dGMvYm9hcmQuZC8wMV9sZWRzCisrKyB0YXJnZXQvbGludXgvcmFtaXBzL210NzZ4OC9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAxX2xlZHMKQEAgLTQwLDYgKzQwLDExIEBAIGhpd2lmaSxoYzU3NjFh
KQogbWVkaWF0ZWssbGlua2l0LXNtYXJ0LTc2ODgpCiAJdWNpZGVmX3NldF9sZWRfd2xhbiAid2lm
aSIgIndpZmkiICJsaW5raXQtc21hcnQtNzY4ODpvcmFuZ2U6d2lmaSIgInBoeTB0cHQiCiAJOzsK
K25ldGdlYXIscjYwMjApCisJdWNpZGVmX3NldF9sZWRfc3dpdGNoICJsYW4iICJsYW4iICIkYm9h
cmRuYW1lOmdyZWVuOmxhbiIgInN3aXRjaDAiICIweDBmIgorCXVjaWRlZl9zZXRfbGVkX3dsYW4g
IndsYW4yZyIgIldpRmkgMi40R0h6IiAiJGJvYXJkbmFtZTpncmVlbjp3bGFuMmciICJwaHkwdHB0
IgorCXVjaWRlZl9zZXRfbGVkX3dsYW4gIndsYW41ZyIgIldpRmkgNUdIeiIgIiRib2FyZG5hbWU6
Z3JlZW46d2xhbjVnIiAicGh5MXRwdCIKKwk7OwogbmV0Z2VhcixyNjEyMCkKIAl1Y2lkZWZfc2V0
X2xlZF9zd2l0Y2ggImxhbiIgImxhbiIgIiRib2FyZG5hbWU6Z3JlZW46bGFuIiAic3dpdGNoMCIg
IjB4MGYiCiAJdWNpZGVmX3NldF9sZWRfc3dpdGNoICJ3YW4iICJ3YW4iICIkYm9hcmRuYW1lOmdy
ZWVuOndhbiIgInN3aXRjaDAiICIweDEwIgpkaWZmIC0tZ2l0IHRhcmdldC9saW51eC9yYW1pcHMv
bXQ3Nng4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayB0YXJnZXQvbGludXgvcmFt
aXBzL210NzZ4OC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKaW5kZXggNTIzMDcx
NzUwNi4uMGE3OWI0YjM4MiAxMDA3NTUKLS0tIHRhcmdldC9saW51eC9yYW1pcHMvbXQ3Nng4L2Jh
c2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yaworKysgdGFyZ2V0L2xpbnV4L3JhbWlwcy9t
dDc2eDgvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCkBAIC05MSw2ICs5MSwxMSBA
QCByYW1pcHNfc2V0dXBfaW50ZXJmYWNlcygpCiAJCXVjaWRlZl9hZGRfc3dpdGNoX2F0dHIgInN3
aXRjaDAiICJlbmFibGUiICJmYWxzZSIKIAkJdWNpZGVmX3NldF9pbnRlcmZhY2VfbGFuICJldGgw
IgogCQk7OworCW5ldGdlYXIscjYwMjApCisJCXVjaWRlZl9hZGRfc3dpdGNoICJzd2l0Y2gwIiBc
CisJCQkiMDpsYW46NCIgIjE6bGFuOjMiICIyOmxhbjoyIiAiMzpsYW46MSIgIjQ6d2FuIiAiNkBl
dGgwIgorCQk7OworCiAJbmV0Z2VhcixyNjEyMCkKIAkJdWNpZGVmX2FkZF9zd2l0Y2ggInN3aXRj
aDAiIFwKIAkJCSIwOmxhbjo0IiAiMTpsYW46MyIgIjI6bGFuOjIiICIzOmxhbjoxIiAiNDp3YW4i
ICI2QGV0aDAiCkBAIC0xNDgsNiArMTUzLDcgQEAgcmFtaXBzX3NldHVwX21hY3MoKQogCQlsYWJl
bF9tYWM9JChtdGRfZ2V0X21hY19iaW5hcnkgZmFjdG9yeSAweDQpCiAJCTs7CiAJZHV6dW4sZG0w
NnxcCisJbmV0Z2VhcixyNjAyMHxcCiAJbmV0Z2VhcixyNjEyMHxcCiAJd3J0bm9kZSx3cnRub2Rl
MnB8XAogCXdydG5vZGUsd3J0bm9kZTJyfFwK
--_005_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--_005_BYAPR19MB298406DBACFA2F4FB6A636C3B78F0BYAPR19MB2984namp_--


