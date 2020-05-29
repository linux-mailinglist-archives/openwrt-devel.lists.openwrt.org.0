Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939761E751C
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 06:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
	MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WdJPEdtbJd0cBsJ5CzzxV0s2SI4rRMOICHRUKrRZCko=; b=Ez5Z3QxHDxEd/lG8IabuWe84jR
	K1iJ0m99/mZYv2KeQuDtnIqGy2+sXaJXdIIcwohZD8AEjukmg1IJQurnkTvVrp1HmLneWnXENm3gr
	186Nm1n5/vySFuKxPK4k2JgCIvLA84H4UvL6lF8XgT6MEY/Jo0mvIEIGGWlAMCAuastoNVYR0VV+7
	V3xx+IKEUXx+KO3X39VJVoKGfGS/iXJN1E7SeKVHnupRrFoQUoZ9gz1D1tPLwSX1zKy1JcOO61bcn
	UOOjVXB5zNgXL6FwGEZ0IDIs0ZJtv3w3NcDtKeyoSCblZCNMLIm8eGU01gwHZlbrV9R40L0vRJ+5k
	2NszmOzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeWxE-0000kt-SJ; Fri, 29 May 2020 04:49:12 +0000
Received: from au-smtp-delivery-115.mimecast.com ([124.47.189.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWx7-0000k8-5i
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 04:49:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uon.edu.au;
 s=mimecast20191001; t=1590727741;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=ecVBXPklZoWicl7uaQVNvlf9MisaKg9004vxtHDCyu8=;
 b=Tgvj0YnlQEfrisB4Cik2W9xnb8QwaHxzAvqzD9YidVEkMCYyg1m6mZZO2mhUox1dkwGC9B
 3ozoDhYSP8CelLsHfosFqy86UUV7gNzx2HCv7I5izEvhdDqUt1HbRrEWnAziQmTcW7Wuv1
 ofsQ68oGf1ZiS4wb0WE6d8eirnFGDQc=
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
 (Using TLS) by relay.mimecast.com with ESMTP id
 au-mta-82-ZJMGbl54Nk-8uQHK65WZ-g-1; Fri, 29 May 2020 14:45:32 +1000
X-MC-Unique: ZJMGbl54Nk-8uQHK65WZ-g-1
Received: from BYAPR19MB2984.namprd19.prod.outlook.com (2603:10b6:a03:12e::21)
 by BYAPR19MB2359.namprd19.prod.outlook.com (2603:10b6:a02:ce::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Fri, 29 May
 2020 04:45:27 +0000
Received: from BYAPR19MB2984.namprd19.prod.outlook.com
 ([fe80::8869:d004:a822:f4db]) by BYAPR19MB2984.namprd19.prod.outlook.com
 ([fe80::8869:d004:a822:f4db%5]) with mapi id 15.20.3021.030; Fri, 29 May 2020
 04:45:27 +0000
From: Evan Jobling <Evan.Jobling@uon.edu.au>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: add support for netgear R6020
Thread-Index: AQHWNXLa7g7dkjyCTUavT39ZY/QR7w==
Date: Fri, 29 May 2020 04:45:26 +0000
Message-ID: <BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0@BYAPR19MB2984.namprd19.prod.outlook.com>
Accept-Language: en-AU, en-US
Content-Language: en-AU
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [134.148.92.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca1d5557-cd59-4ac0-8ca9-08d8038b1b98
x-ms-traffictypediagnostic: BYAPR19MB2359:
x-microsoft-antispam-prvs: <BYAPR19MB2359211AB8F0E2F3F035DA0FB78F0@BYAPR19MB2359.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 04180B6720
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iw5zkKN7Mj1Kuvpb9vTPYXlmIh1S7q74AjcDrJGWAtY4KJA5pO+yaC9IWexmWCaE1jF6XuSnB5HblN1LLg1NoFvcVkWnM8kkInth1xkIcZkiarK6CzN5jYCF94bnhhZP4/oyHwtzkgd74Dj49K1MXoQhVUcYMs/J/W0ArrtZX3rMUaybENUTN+YvScQXikowR6j8naMnzdJGrUPMWi8JWDzTM6Px9Z90HwyqY9SDc93Lj8i1kg7ff05zmUk3AGRgwwJW3CW9jPUMjXlSkhTUtVBX8LweYhBwYMm9FXQ8am9AsgLUEeWeVeC0bIxZAJYeZXaF6Elg3FksbWmtvvKFt8R9Jx9SDlEeTVZ+OlbENuNetx2VwFS5c2wbtZ78G4hP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR19MB2984.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(346002)(39850400004)(396003)(366004)(478600001)(71200400001)(5660300002)(26005)(99936003)(52536014)(6506007)(2906002)(86362001)(786003)(316002)(186003)(8676002)(64756008)(9686003)(8936002)(33656002)(66946007)(66556008)(66476007)(66446008)(4744005)(76116006)(91956017)(66616009)(55016002)(6916009)(7696005)(84152002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: WW/O4h0fQ4iD0XMAjwHamSVJmtXCypq46WEPdWt6gS3oLesk2wN6g5J6WuUpAGFK1aTt/F5kXeGR84KapZ2Vrp/2qFmynyoWfeW8NhpuXWF98mipbS/EG0pdU6eJJfbPfDWaC7rMhfzPvsveLncKmF0EqyhYcQSnsXjnI19mk0hOYQFzzWDJenMC1WiVnM45LIjWpWz+JcrOvzjjmbbbmZ6y4HPDkyaTf1P6/nr+XV69tnstYLK8nc7zR+dbPThGrVDHXWJSdtl/eUJW9/tV+UeFFA7eIhLv3ovzsilmEhpRDjU8mBds6IIKhS01zBIYlTUpRwcHVOCtvGxQ+lAz3U2TGM6y04SBdFE/3ZnQNAFB8d/OMJMqG+qJH9/ThQykrFQnX3vYgmQJzax09Da0MJMAd8U2Gc42HYgVeaNdDNye7byE6GRCBGHoVaU8WjSMiSqj8/5/7f4HaoEQJtnm26v5dK/IuqOlMhuLEqoRp5Os0s2LQhq7IsqSSJVVed8Q
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: uon.edu.au
X-MS-Exchange-CrossTenant-Network-Message-Id: ca1d5557-cd59-4ac0-8ca9-08d8038b1b98
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2020 04:45:26.8026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ee903dcb-2b77-4da5-be02-c45235783dad
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HJuFiperp2Jy584GLi2SkP5v0dWY5kVRG7Rg0hbUnruoUIhEVSAj8QXE4dE00jgq9ChrgDedsKeg6OOSzaKOyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR19MB2359
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: uon.edu.au
Content-Type: multipart/mixed;
 boundary="_002_BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0BYAPR19MB2984namp_"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_214905_533655_183F1518 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [124.47.189.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] add support for netgear R6020
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

--_002_BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0BYAPR19MB2984namp_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Hi All.=0A=0AApologies if this isn't the correct method of submitting a pat=
ch.=0A=0AThere was a patch on github for adding the R6020?=0A=0ADidn't look=
 like it went anywhere.=0AI recall issues with the LED naming on that one?=
=0A=0AJust so it doesn't get lost to time, I figured i'd email my modificat=
ions.=0A=0APlease find patch attached.=0A=0A I may still have an original b=
oot log, if you want it?=0A=0ACheers,=0AEvan.=0A=0A
--_002_BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0BYAPR19MB2984namp_
Content-Type: text/x-patch; name=r6020.diff; charset=WINDOWS-1252
Content-Description: r6020.diff
Content-Disposition: attachment; filename="r6020.diff"; size=2947;
	creation-date="Fri, 29 May 2020 04:41:16 GMT";
	modification-date="Fri, 29 May 2020 04:41:16 GMT"
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
--_002_BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0BYAPR19MB2984namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--_002_BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0BYAPR19MB2984namp_--


