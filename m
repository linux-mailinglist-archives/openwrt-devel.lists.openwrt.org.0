Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DD563D07
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jul 2019 23:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uZKVQu25MdSr3t1+apz60vHTnOAPExw2zQwKtEBVgJY=; b=bDhdW+Vm6e71qFe3ygq3P3lNR
	d7KHzH32815JtvUyXXHsihLE/a0PiiHD1UZgfna4m/eYEOSPL7tsFBksppzAgATtWTxvI0NkrstN9
	up3h3Y5LYk8wlHt4odKedmr8He/xMCo4kBpLGwjHSlV4bEu8HOU80WFaXLgTH6yDBSR5sa1mU5YtE
	EU5VGXx7CeMdTqZPbbGzYmJvr9PfMFu/TdkR583K0QYUGfQRj/K+yEiF2yYHPeRE53kL7WP2k2j6X
	m/KMCW/lFvVKTrRId29BM5ptVbKKEiyyVgKX/Az4iRM7eWUwLQDkCzhUNWX2PDTPgpyt0Z0r+zp0B
	aAfwo6HpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxGm-0000Lo-SW; Tue, 09 Jul 2019 21:03:24 +0000
Received: from mail-eopbgr80070.outbound.protection.outlook.com ([40.107.8.70]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxGc-0000LV-Eq
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jul 2019 21:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TGEPJQLo6b3qsK1y70LvbVGCDMMzVM/tyL2qOtT/3kc=;
 b=d0fhcieRL4OYlkQehFMuJL8i8LIK0esVIYEys0xLyM1R84FB8D/PzHbdARtOOKIwN7Se6usGR9jC5NZE8LkcEEEmatYvgYFq2sivsmy4H+SrUeMyTixFRiTenbINcgxupjHIYdnCS18jbRbcByXlNo1Zdr/XIMIYVhKCvuIk+Ng=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3215.eurprd03.prod.outlook.com (52.134.12.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 9 Jul 2019 21:03:09 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::45:ff01:ea33:8f1f]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::45:ff01:ea33:8f1f%7]) with mapi id 15.20.2073.008; Tue, 9 Jul 2019
 21:03:09 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: "mail@adrianschmutzler.de" <mail@adrianschmutzler.de>
Thread-Topic: Merged: rb532: Fix missing DEVICE_TITLE
Thread-Index: AQHVNom/q5JQgG9dukiRjuwJfDAuKKbCuyoAgAALKAA=
Date: Tue, 9 Jul 2019 21:03:09 +0000
Message-ID: <1D0AE2ED-E4D4-4435-B6DA-AAEFB298059C@darbyshire-bryant.me.uk>
References: <20190708211404.56961-1-freifunk@adrianschmutzler.de>
 <20190709190845.16983-1-ldir@darbyshire-bryant.me.uk>
 <00ae01d53694$206afd80$6140f880$@adrianschmutzler.de>
In-Reply-To: <00ae01d53694$206afd80$6140f880$@adrianschmutzler.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80190360-3ba8-4f5b-226f-08d704b0d89e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0302MB3215; 
x-ms-traffictypediagnostic: VI1PR0302MB3215:
x-microsoft-antispam-prvs: <VI1PR0302MB32157B811F08AC4606B9FB74C9F10@VI1PR0302MB3215.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39830400003)(396003)(376002)(136003)(366004)(13464003)(189003)(199004)(66476007)(6916009)(446003)(66616009)(91956017)(229853002)(76116006)(2501003)(66946007)(33656002)(4326008)(36756003)(5640700003)(64756008)(6116002)(486006)(68736007)(66446008)(256004)(316002)(71190400001)(66556008)(2616005)(11346002)(476003)(25786009)(71200400001)(186003)(305945005)(86362001)(2351001)(6506007)(5660300002)(102836004)(53546011)(76176011)(7736002)(99936001)(6436002)(81166006)(8936002)(6486002)(508600001)(6512007)(53936002)(2906002)(14454004)(46003)(99286004)(8676002)(1730700003)(1250700005)(81156014)(4744005)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3215;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TZJ0gbDwj99ya3fhXGLvXAu6DV6//6GouUxbxxCIv3NwZdwFVj3t2WWg7n8fZSTMHyp0/HHEaUjIyJ+7JtoaL2/zbwHGy2K/qcSPBAdLHru1hEpkdv00TYj8reookMKPt6O2Is1pTVooI7L9ksszzvm+qLk5/+TPcwIfsq08+HOUtfbVGBXhkrLxWqrjjVGtxIu3VCCAnVs2Ae6AQQRTTi77/whFHg/4GYvUCRUMLvaKAi6ITkgRUGoFnJ+sJR9xZnUR3qvOWmOiRzrWL8jOuIJAVW5G9xFHEcUJ+1Lbl9FvIkZBfGyiHRUlRvrVCMLPWzuX4gv6z1Yyuk1ddyei1pZRNsA7zUyUcU28ap1X3l7FlCPq4KNp8WKvue+3HCRWKFWP1GtO0na6dvLvxSM6MHCxyTMD1Z2MCyDGD+ygL5w=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 80190360-3ba8-4f5b-226f-08d704b0d89e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 21:03:09.0141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_140314_581426_4AFE665E 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Merged: rb532: Fix missing DEVICE_TITLE
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============4731128051206223110=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4731128051206223110==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F956F5DD-BE6A-4CE3-B93D-D6D7C6150A4F";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_F956F5DD-BE6A-4CE3-B93D-D6D7C6150A4F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 9 Jul 2019, at 21:23, mail@adrianschmutzler.de wrote:
>=20
>> -----Original Message-----
>> From: Darbyshire-Bryant, Kevin [mailto:kevin@darbyshire-bryant.me.uk] =
On
>> Behalf Of Kevin Darbyshire-Bryant
>> Sent: Dienstag, 9. Juli 2019 21:09
>> To: openwrt-devel@lists.openwrt.org
>> Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>; Kevin =
Darbyshire-
>> Bryant <ldir@darbyshire-bryant.me.uk>
>> Subject: Merged: rb532: Fix missing DEVICE_TITLE
>>=20
>> Merged into my staging tree.
>> Thank you!
>=20
> Does this require backporting to 19.07? The warnings do not occur =
there (seems to be interference with some other changes in master), but =
DEVICE_TITLE is not set on 19.07 either.

I don=E2=80=99t think so, or it doesn=E2=80=99t generate the warnings at =
least.  I suspect related to one or more of
0096a1cf00 scripts/config: fix *c_shipped build depency tracking
75dcaf3d23 config: fix relational operators for bool and tristate =
symbols
972123f1e0 config: regenerate *_shipped sources

Kevin

--Apple-Mail=_F956F5DD-BE6A-4CE3-B93D-D6D7C6150A4F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl0lAQgACgkQs6I4m53i
M0pasxAAtgfVvzVEVfDm8Opf6nZBRPEwU1erKCwIuVRIOabsGGV3InXkpJwojHGV
jxOi2nutTnr1ijn7TIvvRwNMei8e2BtG57wfrjd0c/MnVecJcqHpw51r1UAPNlJs
5uBAFOG4+Us0ZwZaUWsUZQ0lk+KRjhDU4krGhhs2EZ9QCS09L94ytAMOGZAWNgP6
MNMaPwvREJQbw5khKkM69kuEZVcMSTdgtuM+3uO0OmtqBWaKPHLdDUy6gEYK1txV
cfPWklahoKkwTnbtsowlk+X/U9YaTcIzGOxmZgJKBHjw88fTrN+jMFnUDeW2VaFJ
D4B5E+to48MhRfJSWNzn+2nc0tfXXFjyyLFFz0X+usMDSxy/maaehUe6z1zyiMzd
vqWQcQLc7+AGQPPJoMSNDspbSLZOPadJhftR+u3eKKR3wcZ8SvtFj0b3/hM8gf8b
LVup9mnIaa26kE5qhdjoeJueUC/QfJRN7h/p+Bh3ZkCLaalCtw0OXDl0UmJqMiwF
WQIrLcuqcyCTpwfs1pMEYVtCLaAnO1KuhAkwfzt1LTlXkZR5KLVBfmroYaS9fJGX
mkA5dYq2p8qAoVpfY45ZjLcJQqX38dMnUD+RpAr1X5vBpK/TZrCk7wJo8BqQRErb
Bkgc6Sj6V7aMCcjFaXCVb2ZOnNOvGmdtd3aRyJMW69TaEIKFc3Q=
=tWIb
-----END PGP SIGNATURE-----

--Apple-Mail=_F956F5DD-BE6A-4CE3-B93D-D6D7C6150A4F--


--===============4731128051206223110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4731128051206223110==--

