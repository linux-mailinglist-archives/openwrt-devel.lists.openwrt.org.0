Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEB47FE7A
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 18:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KWQTkyM+x8QF0CYivnH/aDeMEPooUe/BcV8TnsquC5s=; b=Fc/FkIfIzEZhjlcXfLG+UqQlM
	MaSAwLGJyLDSZWAcA2da31ISzwxUgnNGI3VUq8vZJbey0cXp+9SUgq3+AlDZwudFMiFUkGWvzn67p
	RPodVzm5mZNS2jm9pASPqEy+UOgsZNyKdnoRV2/LegUrISnTUJ4QptEzmN6+uVWGD0AH9KHmt3NaQ
	LOHUgGnaswwTTqR7eARgbYtqn2Gq7pKL8DlQPT9ppzFvo58lgl+bNcJcmyijc0dtsevT5031cXR17
	J6EI3JGu6Bc8P3DlqSOFEirABvkEufi7Ju0VIHyO1MCNNxkF3BrYbEV2+Pyga4OpJK2BgInqPTF/A
	BzdBayDGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htaGJ-0002JO-AP; Fri, 02 Aug 2019 16:18:35 +0000
Received: from mail-eopbgr30078.outbound.protection.outlook.com ([40.107.3.78]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htaGD-0002Iu-SM
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 16:18:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PSs/4LILZkbuS53d77h+Mk7YMGyPt0oGe24wHdIzcbbcMfebaGKCFMovJTTfKIkhIpGyplJeKNc6MTPd+0BlSPN6zh1fjIlAzVEkouStszLoIibXqmC6lrSEp/w6r+XfnaCfwLZ60aygKKitk7MDfymST7IFkH8yPcT4mbFEQBvew1ejn3NsIIj57c1bzM2G0WpBouQGVwpNZHfi4OLq2CqGw8j3zPYphZSgpAgc7/bhOXcoKl2kwu8lS+AHx4nz4PpJoeVEYUfEScvxTUowfmSWkhmvYdqakbjE3BaV8mxBZa4ud4hU5ACMHyJMq6jt6ackcb2FEsOoaZHY8tgxEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=erUjntQhPF9FVrTxMFhzZ512fpWN1io7AfqPLAeHmA8=;
 b=Jl+t1BT1wsY7WpODRcDUdpyVRrc0EmX0lpGKRRVLQamyRLmUJABXKfL6wZmKF7PcyeaAvwolBjhJLZ+jXVmltcp1VRFvYwRI2owHbg8Mhv95BwsFfYc6jdxc6TGvB6xjlr2MHRfMdB3BcBXzOLmsmsGUGz49OaN4bg3+ARWytu+mV+cjTBe/9zsNU0Pm7nzH2w3+s3gVzgkHJG8V+faZzVBnppVynNyvtTTXsjOarsZUpgv984zJTd6zb/Qj0jDmbKPhb5pdPVRf7SDj1aenAreBUGJtZuO/Kei25IUYXgj3LJw8+HzeJTL/Wjs3I9DbVfclmIkMGNTK5seGjKgkSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk;dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk;dkim=pass
 header.d=darbyshire-bryant.me.uk;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=erUjntQhPF9FVrTxMFhzZ512fpWN1io7AfqPLAeHmA8=;
 b=m7LxhTC6jpFWA/y3lJGJ5k2I/RxADqZl+ocAMxVNEeMbDE8f+Gyif4EpUlJvhLo2/nJVQ/+5bVjEb5Meihpi9IPXJrDVTXTmzv/6KuMM7vkQMIDnU8F8+getes6FKDw/LTwkW94xuwrXC2s3WL7NYVnDqqDdYYL5O+3izFp8KHI=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB2670.eurprd03.prod.outlook.com (10.171.107.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 2 Aug 2019 16:18:23 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::e825:49b7:1:47d3]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::e825:49b7:1:47d3%7]) with mapi id 15.20.2115.005; Fri, 2 Aug 2019
 16:18:23 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Hannu Nyman <hannu.nyman@iki.fi>
Thread-Topic: [OpenWrt-Devel] [PATCH 1/2] base-files: make USE_PROCD=1 default
Thread-Index: AQHVQVvRXW2KAye8OU6uUmkzSy1Be6bn/kYAgAAFDwCAABXCAA==
Date: Fri, 2 Aug 2019 16:18:23 +0000
Message-ID: <539D9517-E258-4906-978F-99241CCF11C4@darbyshire-bryant.me.uk>
References: <20190723133717.20010-1-ynezz@true.cz>
 <8646063f-e4eb-f32f-381e-6fa2a847d0f8@hauke-m.de>
 <4d6009e6-090b-c513-aaa1-919dcd21a162@iki.fi>
In-Reply-To: <4d6009e6-090b-c513-aaa1-919dcd21a162@iki.fi>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26220f93-f001-4a05-65e9-08d717650ac3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0302MB2670; 
x-ms-traffictypediagnostic: VI1PR0302MB2670:
x-microsoft-antispam-prvs: <VI1PR0302MB2670E177D7E20BC577478D3CC9D90@VI1PR0302MB2670.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39830400003)(396003)(136003)(366004)(346002)(199004)(189003)(54906003)(99936001)(8936002)(256004)(6512007)(2906002)(6116002)(446003)(2616005)(76116006)(508600001)(11346002)(476003)(186003)(33656002)(46003)(486006)(25786009)(5660300002)(6916009)(305945005)(71200400001)(7736002)(71190400001)(91956017)(53936002)(66556008)(4326008)(229853002)(66616009)(66946007)(64756008)(66446008)(6486002)(6436002)(99286004)(66476007)(86362001)(6506007)(14454004)(53546011)(8676002)(6246003)(68736007)(316002)(102836004)(76176011)(81166006)(36756003)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB2670;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CXz3nUVdMNrR5wcHdWcemqWrnse/pgBVNJJMh6AcDHSqw6dHy8QNSmPujv1qXUzi5pqHdbAG+t1axq6afIbkQRSw+/j/rxb3/JohV9tnzSHF+kwLlkfdHHaIX3Dpbu8kkxjaMu2rzFeKvZjoS8SmirKGkUCkqPXXj6fLTrN1IE8ac8Quuw0bHyAG2zzzEoWfsojQxCoQdqRyjmLV4PNFtVp+WFZ3+gTz75gq7rzul1cPegY0zirTYhq9HmOhvG3IAUEQgKOoddvvWq5eu4ejpm5KS7pR6MpvAodkDWFH/GR5XgZhENh1+paJerIRmoM/GLqtgRtVKhImtsceLfW71uIGLUUOFHkKUOBari5cw9ihetw1994BuTpUp7k8vVPl+oQqGFToHOmKJUhHqtgFP42SWsC1wv5THrl11/rZ4uI=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 26220f93-f001-4a05-65e9-08d717650ac3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 16:18:23.4396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB2670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_091829_977449_387E4878 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: make USE_PROCD=1 default
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 =?utf-8?B?UGV0ciDFoHRldGlhcg==?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============3195341461758900395=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3195341461758900395==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E513DD4C-0929-468F-91C8-1E8726B40EA1";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_E513DD4C-0929-468F-91C8-1E8726B40EA1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 2 Aug 2019, at 16:00, Hannu Nyman <hannu.nyman@iki.fi> wrote:
>=20
> Hauke Mehrtens kirjoitti 2.8.2019 klo 17.42:
>> On 7/23/19 3:37 PM, Petr =C5=A0tetiar wrote:
>>> Transition period for init script migration was long enough, let's
>>> make USE_PROCD=3D1 default now so there's enough time to convert the
>>> remaining services/init scripts for the next release.
>>>=20
>>> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
>>> ---
>>>  package/base-files/files/etc/rc.common | 113 =
++++++++++---------------
>>>  1 file changed, 47 insertions(+), 66 deletions(-)
>>>=20
>> Do you know how many packages in the package feed and the main
>> repository are still not using procd?
>>=20
>> External repositories, not the package feed, will probably be =
affected
>> most, but I think we do not have to care and there were many years to
>> convert.
>>=20
>> Acked-by: Hauke Mehrtens <hauke@hauke-m.de>
>>=20
>> Hauke
>>=20
>=20
> I do not remember seeing ever a general call for converting the old =
packages to using procd. In that sense this proposed change to switch =
the default comes a bit surpise.
>=20
> Quick search in the packages feed repo reveals that there are 281 =
instances of "/etc/rc.common" and only 205 instances of USE_PROCD. So, =
likely about 75 packages in the packages feed repo only are using the =
old syntax without procd.
>=20
> Has a decision been made to declare the old-style init file invalid? =
Will it be possible to still use the syntax? What is the new "override" =
to indicate the usage of the old syntax?
>=20
> Or will the proposed change disable the packages using the old init =
file syntax totally?

My reading of the change is that old syntax is basically dropped.

Wish for:  We should be using procd and to that end I started looking at =
converting the =E2=80=98important to me=E2=80=99 packages: ddns & =
miniupnpd.

Real life: Documentation is confusing vs real life which is just plain =
different. See adblock startup script as an excellent example of **** =
that just isn=E2=80=99t documented.

I gave up and left the process feeling very angry.


KDB

--Apple-Mail=_E513DD4C-0929-468F-91C8-1E8726B40EA1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl1EYk4ACgkQs6I4m53i
M0opFxAAh9K1aV5Pu2iixtNoV3ToFV6q4cncYXtguHTIioIQgMYhgjB16NJC1ngp
avot1SpxScldvxoOJTUXiceOxiO8vFx4A2g9NHsdCLzcG89o5nC1EV1k+CaKF048
V3JwV2VjWXiE20qyottHFqxSVDS+RBg6ym2GIfrBf+p+NPi0aLosH9gkkQzulkXt
bqctfJh3acqsxlmLcQV5XirgHu4AsD2YPoLunlNgopvdWGTwlZdvg0lCEnKx6tgf
G9G7Yf2jkm3fihicFqrlL6L7UyNm1uoretVGGF28jDd0FhhOX6YCHZ/T1/iObN05
I/r2askYd4HOXQl9r+NKHfvWauW/0sLqa9oJ+LNkVeXfjIoScNeyn5mHY2GFMwEf
h0FGcWwQgDIN3fpXMwZHuJYmzGMKXE0WbXSJANBpC+GVA+79g5ShkSgzh2ngYRMz
Ha2Hzkpp0lnIBdFJJkZNFKYm4VBO4s7HtpqTaTYstAuXSwZ29SqZJY0wENI+J7Vp
T5jLO11CU/8dLhcfqUCyy+ZPJEjIgoJWDr0lpOvbvvKK05zUD4djhi9BVn9rfJLm
Uiu1/YZvoaOAX8Bd3Mf/eKuK3kQRdsyCmdeGH4NkzT5D02fscTocXyvqkWdC0RR2
hksAkitkztzGM+s15ujnFgP1yWjQMGZvFF2536UD+ipotjXBQkQ=
=NjBt
-----END PGP SIGNATURE-----

--Apple-Mail=_E513DD4C-0929-468F-91C8-1E8726B40EA1--


--===============3195341461758900395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3195341461758900395==--

