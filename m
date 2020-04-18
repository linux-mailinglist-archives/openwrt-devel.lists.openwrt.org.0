Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B901AEB27
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Apr 2020 11:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OgyFcaT3vy9dTZLf+X0tuwB29LWbFIf0+JjD2YTm0ak=; b=uMNOa/da9Q8T226QyTBfhDfNq
	Rh20xAGfrRkr564bWaMPtPMcRCnRQQ0Q6gDWAqpWdVYj2jH/z1OlLAvGOHkhT/p5i1IeAQF73hdkb
	XqcUj+Qw2t5FRVBJPFeS8ejSEomFe475ezL8ZPo0VuOcMlRnMNfyO9oqmAFt5QGHLOxBsgDCST/rJ
	L3xVs1sQmSfNP89Zm38fvNRnLbx6V1U50Jjlpa3dZC2lYb+V8y9+v0tfXKsPjA+DtIb9AzVCjKSp+
	DGGbp8K+sZXf30QyFYL9C+a9w4kUVZEt3I1lP70ppo5EgjNqvesfCsRKYP7pHfECX74qFsYsxlpq+
	zRvM9+ryA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPjgB-0000WB-7b; Sat, 18 Apr 2020 09:22:27 +0000
Received: from mail-eopbgr00067.outbound.protection.outlook.com ([40.107.0.67]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPjg2-0000Ut-2U
 for openwrt-devel@lists.openwrt.org; Sat, 18 Apr 2020 09:22:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZOj872NsPpYb5Rxw9EWE9JeFR3WVGmbW3kYvpTbBtqWyc6CBq6IrZHJOZhaDVKvlzFU7PL1LKXwTnBIhODMQefWL5WLm2Exea1zVsGs5rYNw30IqQWHrZjlUZ/3lbfnbXTLoF9WA1J5KuurmYq+yVQVJpJfN78LR+oPgQiWR4SBGao6AZnIvozeO0kFNfP3qEIH1iwBqrhWgRKGmwY3+/sRhIow5Xo1O6ZWRP53j4vJUw8uxmLaCCsMXeYXuAYo1TedlhEItkMhm8qpCcannaVlkVLOcY1IIGaHuKSj75gsc2GMMrXlyHyoH0VgqXvc7wXqsyfZ+dWmLumYzzViA0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fdnWRPkZ43jIZS8czQL9pudtnyDzuD/PDhavXbpsaNc=;
 b=CJX34TJvM87RlFNYwqp2Q4r+I0r/OYE9xf+93kuYhzS/6NBRAbJKqW4qsWlkaCyiF6InbpbKFPl8Db2GE6ZQGy2tuTBxD1wZ431slDRK5EeHPuhX5/mv9TYqQ6X1UkgYhkWSceRUvXH677mU+EFTT+wz9KAnOTkolL5v4FsO6Igl7+vpi//J87Va7IWnifFnc8JPqzfXBhftF/wTIlVY/KQxw3hgNz482yFR2Ck0knuUbsbpFK45/iIaRbeuniy4crHMzmxL7fsLqde9+h0nEMc1CzKCQ5pEaGf912gMM04Iftwg0ziys6v3on+r2o3ZFtbi3VCCheDQ1s9TcrJNdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fdnWRPkZ43jIZS8czQL9pudtnyDzuD/PDhavXbpsaNc=;
 b=GCJIOki1h6EYsemCZwrWmh1txx6xnXpiLShTao3R/f2s/eIxhbqPvHfoXSPYanDgm4ZZ0n5TnKh/gwXFOgcwviREF18SJxNdodi5tSdRtAGolbJ0f5KyRf4aL+IUOFG8eKDXcE0fQ+zH77TgDVmVWJfA1JI9/a7+FKr18zU2oJ8=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB2896.eurprd03.prod.outlook.com (2603:10a6:802:38::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Sat, 18 Apr
 2020 09:22:10 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2900.030; Sat, 18 Apr 2020
 09:22:10 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] [PATCHv3] ubox: run init script through
 shellcheck
Thread-Index: AQHWErW4BpERldvAhU6/SwogDb8qmqh9BRUAgAEN+oCAAI0wgA==
Date: Sat, 18 Apr 2020 09:22:10 +0000
Message-ID: <9B0C699B-8940-4032-AAA9-1E1568450E43@darbyshire-bryant.me.uk>
References: <20200414233728.2519084-1-rosenp@gmail.com>
 <00ef01d61495$41440df0$c3cc29d0$@adrianschmutzler.de>
 <CAKxU2N9fWhV+ZTFM-EXgKzsrFTFv7w+Fi0OWVrrC+C4jH+PEMA@mail.gmail.com>
In-Reply-To: <CAKxU2N9fWhV+ZTFM-EXgKzsrFTFv7w+Fi0OWVrrC+C4jH+PEMA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6656af1b-9f6a-439d-03bc-08d7e379f8ed
x-ms-traffictypediagnostic: VI1PR03MB2896:
x-microsoft-antispam-prvs: <VI1PR03MB289660ABD90F91C09DCAAD99C9D60@VI1PR03MB2896.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39830400003)(366004)(376002)(136003)(346002)(396003)(66616009)(6506007)(86362001)(71200400001)(33656002)(8936002)(186003)(6486002)(53546011)(508600001)(8676002)(36756003)(81156014)(5660300002)(99936003)(316002)(6512007)(91956017)(2906002)(64756008)(6916009)(66476007)(66946007)(2616005)(76116006)(66556008)(66446008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MAtmGsE9DUrAYIJgQEZ25V1dbCTgIg45q9mnCcBMiSRerKBcXUoxUS9SPkYiUf6u3gmcRmCt3BoPoCUCiOsMWHNg0Ds7M5k02Artifb0UZ/YLoID14lnwoIleBiDa6/C+fpjLW34HWg0qtWVmhh09aKvLozbgGWnG6dj8Tkqrvwe4WxdTIw/bpNRzl7pvkp2gF3ixmkAJBtKwvU4iyQNFLrMQEESxemQvlxwr1WxmQh+Li0XgE4+zS1nBMyR5UmaYK52PUhWxfpZqLwHN30anOkbD6+FRhJMWxhJCvqoyhlLSSAZM6xIDQ5KYi/qFXIFAvnhL4qpNP7RHFnN7p4sxPa6OhYpwAKVoS4d5aNVTnWgs8N3b11ePZ5ShY2AAStw2+trqfFmRzPtuqEgRrtrYLMMzz1RgMQ+UFAbWjlsEmqXJlh59Sza2lpXjBdpR4sh
x-ms-exchange-antispam-messagedata: vQbBkw4lwI3WTQPoFYYdZ2tP+GyRgcgsVyUW+UscJZl9/uQvxUSm+oIZ7LNFbGCleeXBQ/yIR7Fd3YmW4ZXWOeO6JYg+eOvqf4Eom6qAQBXsj6sjLb+1KC1XUIpiJdP9FP1T5VrCFfOQaxAywo1iWIy8PVWC0mtlcx5JjDS/j5luHGcNFF/S8Mtl39/t7RkM
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 6656af1b-9f6a-439d-03bc-08d7e379f8ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 09:22:10.1835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D8yK5hl2S+jet+OrgbUGeXXgKb3xNUNG/p8MlDzdf+RHMMhswOMQ8orQp2cy0Zu/kYXMHb9J430esTGe68r4XwmLMUYCwGttlWNeJR2pqvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB2896
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_022219_878028_25FBECD5 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCHv3] ubox: run init script through
 shellcheck
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
Content-Type: multipart/mixed; boundary="===============1517862950080891622=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1517862950080891622==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C11174C5-E459-4BA4-9C94-5E07C3992F0D";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_C11174C5-E459-4BA4-9C94-5E07C3992F0D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 18 Apr 2020, at 01:56, Rosen Penev <rosenp@gmail.com> wrote:
>=20
> On Fri, Apr 17, 2020 at 1:50 AM <mail@adrianschmutzler.de> wrote:
>>=20
>>>=20
>>> -     [ $log_buffer_size -eq 0 -a $log_size -gt 0 ] &&
>>> log_buffer_size=3D$log_size
>>> -     [ $log_buffer_size -eq 0 ] && log_buffer_size=3D64
>>> +     [ "$log_buffer_size" -eq 0 ] && [ "$log_size" -gt 0 ] &&
>>=20
>> I'm never sure whether a comparison [ "$string" -eq 0 ], i.e. one =
with quotes and one without using -eq works as expected in all cases.
>> I typically use [ "$string" =3D "0" ] instead, but I'm not sure =
whether that's effectively just the same.
> Sounds bogus. log_buffer_size and log_size are stated to be uintegers =
above.
>>=20
>> Rest seems fine, despite some similar cases with -eq/-ne below.
> -eq/-ne vs =3D is a stylistic difference.

I disagree.  =E2=80=98=3D !=3D < >=E2=80=99 are string comparisons, =
-eq/-ne/gt/lt/ge/le are numeric/arithmetic comparisons.

Consider this slightly contrived case where to emphasise the difference =
between string and numeric comparison I compare to =E2=80=9900=E2=80=99 =
which is arithmetically zero, but not just a simple, lone =E2=80=980=E2=80=
=99 string.

#!/bin/sh

set -x

[ "$foo" -eq 00 ] && echo Z
[ "$foo" =3D 00 ] && echo Z
[ $foo -eq 00 ] && echo Z
[ $foo =3D 00 ] && echo Z

foo=3D=E2=80=9C0"
[ "$foo" -eq 00 ] && echo Z
[ "$foo" =3D 00 ] && echo Z
[ $foo -eq 00 ] && echo Z
[ $foo =3D 00 ] && echo Z

foo=3D0
[ "$foo" -eq 00 ] && echo Z
[ "$foo" =3D 00 ] && echo Z
[ $foo -eq 00 ] && echo Z
[ $foo =3D 00 ] && echo Z

The unquoted expansions of $foo in the first block will lead to unknown =
operand errors since $foo expands to nothing.  The quoted $foo in the =
first block will lead to =E2=80=99sh: out of range=E2=80=99 because =
=E2=80=9C=E2=80=9D is not an integer suitable for the integer -eq =
comparison.  A solution:

[ "$foo" ] && [ "$foo" -eq 00 ] && echo Z

In later blocks, because $foo is now set it always expands to something =
so there=E2=80=99s no difference between quoted vs unquoted behaviour =
(in this example!)  we=E2=80=99re just into the differences between =
string vs numeric value comparisons, ie. string =E2=80=980=E2=80=99 is =
not equal to =E2=80=9900=E2=80=99 but value =E2=80=980=E2=80=99 is equal =
to =E2=80=9900'

Maybe that helps.



--Apple-Mail=_C11174C5-E459-4BA4-9C94-5E07C3992F0D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6axsEACgkQs6I4m53i
M0qHfg/9F+nOftTOmoAZDTLuwE9voJt1XnqO0SbzLrXgKmx1qGQskU2lWtdpybfv
nG5iee2jcOloMTQYsIcZUPJKanvLOjiHC7ZNN7QUIqi9pd7GeW3W+raUdcwEpG/X
VYRSrToyxz00BxImczA/hUhOYrZW3SuQ03crHWlpnhE5COTBzU/iDk7TdsfSrli7
0GnlByAhHONhGogXtzFzN1tPO3Uj7j+nkDyD9ew7m5Ribg4RkHkNOKKZV7znx0yq
p/x4lvPtz6LBA0TpQO2B6p6LD3QbWaj4LTtMjHVlcrXGRMBXpGdW3dGVsY94ZtQu
kLTM++1fQcbiS8Jvxc9pVSEfm3bgSuioIhTqoVzgwf1vrcuNtUMca3/V2ZnOeo2v
YAnUXnFCGxeUltcWdV7yme03tet3p3Ia0NiogY+y0fV9wQr6SaxF41OabsEKzocq
asxzSIz1wvA0ZeNMbuRS/y40x4lKM87scFbmN//p6Znptet9TuXnnkMopx1VA8Ni
KzfKUHI+9Olbmrpkn8Vp9bNsfZ8b6j/QAfIQ3ZGrbnSaR7dmeiCdIhXosl8P3ecZ
dsH/vh9JlR208+UOBTUqKaOOwTX/lEM+S8onQZNX13aaftP/bXlD0bnlxgfS7/d9
t4LW9qIkFV7+/xa7T7syovSHLanktDoW1PHQeA1/4HNSUPfT3cM=
=kgv2
-----END PGP SIGNATURE-----

--Apple-Mail=_C11174C5-E459-4BA4-9C94-5E07C3992F0D--


--===============1517862950080891622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1517862950080891622==--

