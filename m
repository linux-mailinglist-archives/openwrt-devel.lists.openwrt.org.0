Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D2B1FEE1B
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 10:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lYoWuD3rGW3mnnDikRza0Fvy8MKOTvwe4SchPoUOnmA=; b=aZ6eZtRwtwtI6oXcAqUFfn7eF
	N8+DVnc8hRnQfrFh1n9KaZ3q0IYEzwxRox+M3Vh4oZ1ghrcZ33wHvv17goRiHNeGXhYV9q068+/Tg
	lIs9q9kkZv+LNSY35vnKJNR9KGcWut4d0T6FqonSvrsyrGUKSH48UKLtxfDz5EZJKipGSSixXcZo8
	35qrXtOst57dAzZ2YtIT+sfiSX7+R/c9Js+ml0hhLx1PYBnZUZaKsXJB96HbnEn/VWaCDPGyOdUh/
	ECYlEU7j3qCl10Jh9SbNAo88GjC3tnzXfuPPPAlQBZszsGFPBfhoUp7fpKs8w9uPtrnlzbolBp/sU
	SR48hpkkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlqI2-00060g-SV; Thu, 18 Jun 2020 08:52:54 +0000
Received: from mail-eopbgr150074.outbound.protection.outlook.com
 ([40.107.15.74] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqHs-0005sD-Vm
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 08:52:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PX2ZW9y5I0a9L4Fkg2tTOLXGVU3qCaqh66iPGEgjQ0ediXIS7ddnS5bxZSWRpa/FROo1BDJbibLFl5xh3fhxWbgRuOHIep2Ms0dvVfQqsGGg46m8qq1Bc5PhltWHuF6gatVNTtA6KP2cSXAWJpFT53v6zyF0Q6MxKw/MYDVzflDkOxKtqcfXPG+mWx704rloVPKoN7X0fZpHOERoALe6QHZ7f6cu0lWOQ62zYm05F/CByoZOaYyKddVdo4+ZUXORM71Otejd0GnNJS+tN/PRxuEsCTG2e2QLCpcKLNFl9LxuDZNbZiygHljmBl6Fpb7FD6kchNBzoAlnPSMqjvZkAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=52+mpasXvqGNoeu10BsXOgS8IBHlwZM7fBLIqrz4w0A=;
 b=D0TT9fnIVUNCr5V1yOQpyJ1g6kHJaQOsX6aD9evs0ojCkWVHwLst8B8CuWQGeKz8n5jrHeEnXATRpNjqXoy54xgu6e3parLqC3kH7qyOTFTh6CyOJzWvuknWnPZ72ZRIWpqsLzonfwFu2Y7WW8cVGATq3cdYROD/bmX14vKK3vEMzaYIlKyjHyQOUujs1MyTa/uz4c+tBz8gmms6mC8ioKpYxVN877Tpx4zl1dBU72Z4LFcPCUWmoD/jBJZh6afqfZ6P1y4RyYV+6qsno5q9RqkupAGQyv4yrX7Eh3ENeEKnZwpCrKO+TNJQaU/r0e28E3sa8zQTWtggdj0/AZdalQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=52+mpasXvqGNoeu10BsXOgS8IBHlwZM7fBLIqrz4w0A=;
 b=fpFSOo+l6RHEXXjpZmZzF3YMstc62GNfngeqVGIazMcdnFx472RJbNQx5gYWtlCnFHLAroh8FhPCmFRmS+owVrmhmROYDtVXlZaplz+rE4INaCe8dgFVBQ+l/H2DOXN0FlsryC1RZ+RJ25ajb3jC4YZv7S/NSXBGCLeNomneWLA=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4158.eurprd03.prod.outlook.com (2603:10a6:803:60::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 08:52:41 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 08:52:41 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>
Thread-Topic: [OpenWrt-Devel] [PATCH] kernel: bump 5.4 to 5.4.47
Thread-Index: AQHWRTzDAGTTSEAo2ECuMjTqAJPVN6jeAfEAgAAPOYA=
Date: Thu, 18 Jun 2020 08:52:41 +0000
Message-ID: <0F2E877F-1104-427D-9C24-220FE3434F93@darbyshire-bryant.me.uk>
References: <20200618065015.73096-1-ldir@darbyshire-bryant.me.uk>
 <9c5c159c-7638-5fdb-027c-39f8d9b2a9e8@ncentric.com>
In-Reply-To: <9c5c159c-7638-5fdb-027c-39f8d9b2a9e8@ncentric.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: ncentric.com; dkim=none (message not signed)
 header.d=none;ncentric.com; dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1227:c00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b37fca5-347d-4395-c04c-08d81364f5b7
x-ms-traffictypediagnostic: VI1PR03MB4158:
x-microsoft-antispam-prvs: <VI1PR03MB415841EC820803546C00ABA3C99B0@VI1PR03MB4158.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SdHz88vKjyjVfRhN9bB1eoAxxBvUP3pMPJM0A5uWcTZddo7WioZ+/jJhZpvqcBm+z86TSBL4i9tllL4Ta3oBLDerXjhgpcIqP8ThR5DyvXMdGfTTaUASFhMCSgzDPFhtZOlnRwr4/c3vZE6rqYlnWVjC8XJLnZIK/Rjp8wOeybP6iMtGGQ8stTq74OvW5fU4mGDa9PoKGvI+oqhphi5MutBY/MNm3zZPTjArNJcwZ4YkXlCpVLeBvOQs6U5vs0WBf23Y4gS+Y2ZP8qaVod8iK6X5hD9M6SCGpYKU7kEggnC6Jqt6hK/g0XoTMfwk/z8RNl5pVdimGSqDwO4Ll+GJ9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(376002)(396003)(136003)(39830400003)(4744005)(6512007)(91956017)(76116006)(66946007)(6506007)(66556008)(64756008)(316002)(86362001)(66446008)(66616009)(5660300002)(53546011)(66476007)(6486002)(186003)(4326008)(508600001)(8676002)(71200400001)(33656002)(2906002)(99936003)(36756003)(6916009)(2616005)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: QjLr4e+q8gzjuEV5g+jDFG+T7E4NWh4fUP1ORCtWSyXO9PW6JhzbsFJBMeGPkeB5REbw8NHLBhBZIMI7TQeH6/2sg2hGSdJuAJD4cRykLIzwV4qlwFecAmxenwt3LzbQqfXlEXvmEShiqbKPFr3me7ghg1jZ4OdenYg0W7DbSML4K0VG0MSW15mJEx1KZQBKkZfJK4Gw79tc4p/Krr+UaZGqkoe5S7TUSDGn4cAA2fh9wkhZNmFYF2VCfTK8tqSM0g358FhQ4aZD2WSLyVgtWfjndqiLDaTdKJODp7mCfJtZRTI5zLT31X37FF1tUFz7WYYiXRJsthW0N5OnX+e2eTecOaU8cgvWDtdSUGShGGzR7/u8TQLuphQuhRJz65rOyPq3jPzG3hWNFD+y6xwMjjeMARHCe6AsBvapFUtSm0NJoQMMn+LCgSRo1eihirGA00mPN4gul6IKqFxlgTyPVCncCQpUc+mrTTuZUfEdPWkRSBKIT7q0b05YPQ/ztW+Lxn/qFrUn33XXkvaWQ3Y9yg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b37fca5-347d-4395-c04c-08d81364f5b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 08:52:41.1533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P5Jq8rulAPzX4z47f7dSqNkszUznyBqgSGGXGwRbVDSTVt3fgUiVjw8SnCp3YMf2uONXzLEkeZhyo+AhPE3oEHTPFPM1hTlifmx8HmjFm74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_015245_088459_7B9088AE 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.74 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: bump 5.4 to 5.4.47
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
Content-Type: multipart/mixed; boundary="===============2475585570437384676=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2475585570437384676==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F3F3370E-AD39-4BFC-AEF3-D3D4C913CEF0";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_F3F3370E-AD39-4BFC-AEF3-D3D4C913CEF0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 18 Jun 2020, at 08:58, Koen Vandeputte =
<koen.vandeputte@ncentric.com> wrote:
>=20
>=20
> On 18.06.20 08:50, Kevin Darbyshire-Bryant wrote:
>> Refreshed patches.
>>=20
>> Run tested: x86/64 (apu2)
>>=20
>> Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
>> ---
>=20
>=20
> I've got the bumps in my staging already sinds a day or 2 :-)
>=20

AFAIUI 5.4.47 was release 17 hours ago, a few hours after ynezz =
committed 5.4.46 - I think.

--Apple-Mail=_F3F3370E-AD39-4BFC-AEF3-D3D4C913CEF0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl7rK1cACgkQs6I4m53i
M0rshA/9EufBdHkq8jEtWUwP8jv1I5cRqQBhwnQ1ozPVhtXC6MbhD558QMeRvgkJ
L8KuNyq5c7vwdnRyl6xcw6PszhPn29CO78KIqmQeiCmuFUtawhcf6fsArRLOFO/r
aFZ9zH/DfKP7zwoe8DLJKi1/WoOSwY4/a4gD1z12Id7cyMQvggdk1k8cNz4JIOOI
vO3ecytz6ZKNwddJtv57IuSuQBU9+FSQgrTF81d3Ycb0iR7KRzykZpHmhZhaAOw0
v3P7auJpFQwP6PQznaVgEIRUnQGUUUCniFBdMqFLYHVVq/jRjpScvDdBbEv3BD92
xXq1ReKEghJZNg/8ZVGovjajFmSxs3H0Tcht9Cm9vFWLxaRCkLBFJyd9NYQQQ71N
T8I/aOZ+CSEM1er5KXx9pn3fk4ASAm5mTlnfndu7w2ojzxv2rbVeHKtzwiZ1lIIO
gAiyfblfFXtNsUoKCYXlcqQtHtM+roLelm3mZUqgzzXN1I+7/hp5AWEdKfJuYR6j
Uaoy9Y9bso34++/7jZerbCUJrx0fFG8B67XWzAx7Sb9mCCoZSyEE1CGbqcr8nX0B
HwHVSQk8plJWjISSigz0t2GaqaMtMYkBAr/HRPWmd1SR85JJWyagqiJ5UA4RN5/S
r3a1AEL8o+l60UViGJLD4bZSj4wiYbAcRg4FsaLaP43XHqg48t4=
=i/5F
-----END PGP SIGNATURE-----

--Apple-Mail=_F3F3370E-AD39-4BFC-AEF3-D3D4C913CEF0--


--===============2475585570437384676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2475585570437384676==--

