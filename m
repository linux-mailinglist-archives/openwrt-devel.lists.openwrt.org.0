Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9779D1CEDDA
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 09:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=noZZZV3N/BoIXCSbuDk/v45ozinXn87oDWfmdtf7g9o=; b=Rzepfyfr9i67m+Lz29bLx77SF
	sDnao3KevB9jgc0SrYR1C0GqFAb01VYLLH7kysPJluRFqaKNmBO0JY/nNTtRaI5MQXXr8XpwK554+
	ycxuzHfQI2YA3jsJi9r9KXDuctsyDu79U3BOwRwuE1tD1kNFst4gKjGxrzEwRsjftgLrAG0B1A9MF
	r9W9Ct8TrF5/NgUKHX/PbQpEqZ3AxEJgYMTpQrtF4MSpqVqhtISCO/HECh1iDbpsbIUimhs9aQx+Z
	ozDArA5PO/r+NsGqF+f9AiNu9rpM7QA7q0+BwTiRZrxg+Tmn7w+YiP7Tt2Lx8o7qjmw+kOP0eQ6Rf
	EiF6hHdSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYP72-0007rX-Tg; Tue, 12 May 2020 07:14:00 +0000
Received: from mail-eopbgr60088.outbound.protection.outlook.com ([40.107.6.88]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYP6u-0007qX-HK
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 07:13:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OvN4BL/6T3AUK2E00cxjqOyDU6N7T1Pp9p6mveec82+NYWC6aHKHus2I7/3Gk50o7mClw2bmq0ALcgMWPSJwv30+AV5D19IJt2pRAufpO3Qtys4Jz+01XbpJSq87Byy/Qa+UgcGjrT041FonewsHuCnlUkuCmcNTb87y1vIGneaKgHIcp18ye1OcruAIguce4Sie/4sEMhep32p1lxdsx7Tp0d/l5Gbho9k80lUmirRapPXklVDbJgu1eLl5bw0ZKl8CxiD+Pj7pS4Q/8dzJhCjL+xqTS/grTcqvsXuErxzt3HnKYSU1Rp4GWCFIAZC2F9UKTjjAPcgOalociyihOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vEqpwk/DwLVfO83nWjSHMLWixCeE1SLXhjQVtsXHzVs=;
 b=LWUMpLlBMH3mBu5dsUNTIqYZptGFjEWwK8yNJCDod3aIc4YMceBOkRJQLgp5txcQh7y+dp/UtDbC4LwWmjiwykni2xkbOBFeEW19Vc3965LKcTmZhC2NTMh+Y3MlAigGtl7Oxg4ChB91ayLtJRhzNXttyf4B83SQjlcaKqSOVbK47W8nGuxIYml0gooGjvL9G/r8GECRjSujtgox5ta0igNWmx+BFeHPRJNPFDmw+2K6Vni21ifNNA1koWlgHaeLzBAejmm7VuttEvA9/G0sLdBsO+Kb0C0bXL8OCMYk/bn+zxmt8rJrVvZqNVzz44y+upu+7WtxM1SanjGuYnEQfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vEqpwk/DwLVfO83nWjSHMLWixCeE1SLXhjQVtsXHzVs=;
 b=J5QKSMFpEyxUy/Wux/Gvvq5/3Qmzh9GxjZW1kOFIrouWcBha0zYH917BVwg8Kp8KNKlPcAPKwKdaqqUVnX88sic4Iar7kkJy9AnnsGatwFLTJduhUv2lNOGgaw2Rm2FkaicHlU5aUlJtOBn84PRpNjoBu2+JBiYPPNxf/m8B+Cw=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4895.eurprd03.prod.outlook.com (2603:10a6:803:bb::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Tue, 12 May
 2020 07:13:45 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 07:13:45 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Thread-Topic: [OpenWrt-Devel] [PATCH fstools] block: fix segfault triggered by
 non-autofs mounts
Thread-Index: AQHWJ+5ib9KRXYoUyUCIUttBhdY/4qij88IAgAAWHwA=
Date: Tue, 12 May 2020 07:13:45 +0000
Message-ID: <8D0093AF-935E-4C5C-8D40-CD3E53EFB570@darbyshire-bryant.me.uk>
References: <20200511234549.GA574432@makrotopia.org>
 <fa171f55241f513f411c3d8913c21963@milecki.pl>
In-Reply-To: <fa171f55241f513f411c3d8913c21963@milecki.pl>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: milecki.pl; dkim=none (message not signed)
 header.d=none;milecki.pl; dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72362f44-ff45-4da8-1fe3-08d7f64402a0
x-ms-traffictypediagnostic: VI1PR03MB4895:
x-microsoft-antispam-prvs: <VI1PR03MB48951026518BD380F0C6A334C9BE0@VI1PR03MB4895.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ICTwss/wfYMEbxrwShHMxZORKyC7WT9S4nVVdAoqDiSLWozIgZ2/2y4Ap/YfhdPMtrUmkYkNpTHnctL5mFrrtMSSNKCAFtABPFIlNlTEufWWU1G8HY6DSt3jj1G7V1Ma062fF8by9Jzr5M2oy+OD6SQEhTNOrGrytOGVoq5pKC2+OyRIQoHUWc/YJpY8ugqXIDrUT3PO/SR/OvWv/EVZBoAUUfLiNYo/ksnuEsaQt5Plxz8jeQBx9np5E6PJ94lRG3utZbEYttJs/9iqFVrxwaMWlrENCaRQQ0QGLm1q+aJz4AV9ThQ+iFRkb5V9DO0JFdwiLmLh9NURz7J/Q0Xg96XfZEQIEWPVtSC3HWUxNrIbY1VV2GJQckxXVVi1j1nmUgQfmXzSN2lJeYYr1IhOjISpgUr3Qeb8DHKkNEcWwK9DM9ab1flH6pkog8ovZohC/tXH5+yx3+p+5Uigivpvd9mkGNypmxBIHLo92qTGvvLM9gzJKV02stvwoNQ/qpti4QXGHsYUqTg6mElch79PvQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39830400003)(136003)(396003)(346002)(376002)(366004)(33430700001)(4326008)(33440700001)(33656002)(64756008)(53546011)(99936003)(316002)(8936002)(4744005)(54906003)(5660300002)(6486002)(2906002)(6512007)(508600001)(66946007)(66616009)(66476007)(86362001)(6506007)(76116006)(66446008)(91956017)(2616005)(6916009)(71200400001)(8676002)(186003)(66556008)(36756003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: g/oHr/KB4kns5ejEFDN9BEpSRzU8UjWr4qfSDrXJgdKD52ZyebgN8uz2dapqZIdqgbIdIgOLzjscc/ipSSaJ17diEm0PWDQyHtjkje7iUuTXZQNvHBECZPdIYlB5dz0eFH83nU/UCu3LF90ZcINDBGhW6WAWQuX6ouG5UGecVugtSUNTBCoupDOGDkSHvB3qShyD3xBSGyeO8kkSaQl+v2r51ftifaeiu7M6rCrbJ4DOzRNScTlmRkQZMwo9U8iG3ZbIYcaaL+Hx7ms+mkq6679MuY+0TcBsoSZFTDWNHWg0BcxjVmw2HU4+8YIb6odmzk+7N1AfSsvtFCLmz8bi8dZU+Fc6qZjdA8NpHKGyQkhVNY01Zu4jOsBsQwUCjdMPxOdQKHkGN0i/CrSy5RI1GNPEhM8bSo3HLHKP6HC2oF6Pnh+wWcmnQW4T8I9QUKklaeI/FvGs8C6kTnP8JhIdiA9B8k0S4mhAqFkO1jPG14JyTaW/JCQ7dI+m1NFa+YIKW+kSbgcmIFmL3sT6I0vUgw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 72362f44-ff45-4da8-1fe3-08d7f64402a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 07:13:45.6602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tH7Sbxetxezbz+g6y8a1JhhnkBc/biHWhIG77Shczs3keq2JV5+fK/puXZXUZqiVX4ijaafUvm8Kg3vutVz9HPV4SUVmNcQQYwtCjB+E1gY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_001352_628046_FB0C2C33 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.88 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH fstools] block: fix segfault triggered
 by non-autofs mounts
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Daniel Golle <daniel@makrotopia.org>, John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============5936645072931579698=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5936645072931579698==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E2E2AA21-4C06-42BD-BE44-4FC24954456D";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_E2E2AA21-4C06-42BD-BE44-4FC24954456D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 12 May 2020, at 06:54, Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl> =
wrote:
>=20
> On 2020-05-12 01:45, Daniel Golle wrote:
>> Program received signal SIGSEGV, Segmentation fault.
>> main_autofs (argv=3D<optimized out>, argc=3D<optimized out>)
>>    at fstools-2020-05-06-eec16e2f/block.c:1193
>> 1193:    if (!m->autofs && (mp =3D find_mount_point(pr->dev))) {
>> Fixes: 9ab936d ("block(d): always call hotplug.d "mount" scripts from =
blockd")
>> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
>=20
> Thanks! Please push it asap!

Fixes for me.

Acked-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_E2E2AA21-4C06-42BD-BE44-4FC24954456D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl66TKgACgkQs6I4m53i
M0qeBhAAwjEhc9NzbOakkr8/JZamE4VB9I25v8k8hUJz4QKfSQwDGpYUgHGO2803
scPa1jZRuC0R5sUA6OYXvEhR15A1PaYlLQaT+cq4glLyxmbQla2HSKpOVmlTg1ZJ
AvWGlszrVLgYnBd/woeFtEcII8rIjcaUCIfQlrMK0zAMpwy75ljFUMp+rNtvsLJ8
MmkbCG5tw/pW0vMouxgiloEft3MqrEyhQng6KQTw9OHh59iwcYA6Eg0Sw+ae5Dan
n1UV9KfbggJKNlNdy/bnQgtC5TZDCWu/YbgObSsuylOUvoWYcTUsDm8ircPfE64E
wHXsqe+UH+moVONDr7ljs6C3sMozNrznPwCOxtfeMfoq7V3ks2/fszXPWobAFdJd
PbYCpdxYjWpBaCq6blTgYpSV05VDzrqqL9KjZFZxSSsits1z3dEyL+pk6SuvYRR/
bw/+AMH4nruPe40J3lxhORjyOjlPRI7c3PgvC4U12+7YYJu0PxC0iNMpm+p2dxtX
GotZbTICQ4DFOmz3fIS75wXK7kX2YgaEEHSIRRTf/l9h2WJLySo11PKaaDnBcEr/
QrfwsXij/0gpjZwqeq1UvhQo2/26a75ZwF+j2QfQSRoeNBcamNdZ10hqE0H6Dgo0
y/3NTGoZQkqteGRcK3iid9bx7R9jbrGkSVC4pZ4ZOTThMZ996yI=
=nMT5
-----END PGP SIGNATURE-----

--Apple-Mail=_E2E2AA21-4C06-42BD-BE44-4FC24954456D--


--===============5936645072931579698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5936645072931579698==--

