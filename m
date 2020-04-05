Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66C319EA06
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 10:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8eZpCHKu1MKr8pW1VWZ6q2XDkqaM8iLBTUimq63V34k=; b=W+mmpJW+pzWi5M8MDL03hKQZ+
	M1D+32Lb4YKd8DWk8gmJlxA9R7YSzzvzNNZXpMPCg6ktJLbYv4RNzgGAYqHXbcWTeTTztQTOqA8F8
	ysUytJGJfIl5k8jV7sfeulVnJQlnnezcfLAxwTJzqeXnlQ+fWmaky4eSiw08h+dCRI+0oyjgCQS1R
	hQrJGsbp878kfxQuzx8+B7Sxgv4PT52tVhnoNG4MIkfZDgW1JHkV4AIgxN+Gg/IjfdAuIv+vcZlf6
	8mjvT8uC0HJd0KNw/b0JGvHy1YtFu5m3O9+naqlw8i2OjyuvvYDWpOeRfC7mBqJY0jZ42Cz3oWvq8
	Q2r8lxwJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL0kg-0006ED-V1; Sun, 05 Apr 2020 08:35:35 +0000
Received: from mail-eopbgr10049.outbound.protection.outlook.com ([40.107.1.49]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL0ka-0006Dp-MH
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 08:35:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LdOai1WEsLTJ+h+tNPMBp/iE2yp5uPNWYK9yp1ZA1E1ndDJ+R/3PbJRTTe5qrAZCc+aRIireXavrcNHAN7bQCvAepxb35HCPBWd96nDnv6Wy5ovitwF8N4lK5Eaj/UUQkt1spMJKAe6B/zfj9DDu664xeDwCxIpS/B5xjpn56QzXsyFI/feTUMya7Vuk3rMZq9ts/LSPpLWDyJQJLWdw7Fi9P1QCkNXxbccmv7YWWBpUa2P+2oOHujHIX3Mf9aI8gjtCm5hOVLIMOiTaplISVCaXFDtfLsN5lKGuJ15XqWbe3GcEaESIZ9cIJVb1208+qA9Ys3wu7ZUnmCbgRMMB1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g3OUPT2anNZz1OYjn+u16V+qS1bkWrzc3shV9lSuVK4=;
 b=C6DAZwm1KLcCn3vLFA42ELkmoqEYj+1QXxdUuCppBjeVHgm5V+muSJiWe+gwiFHSONRpzdk4C/gChC+hzORhBExY5waHj5bhwT1vAK+doMxgZM0TPgXJNAs7rNgXt7jSVV0kJ5fWrow6F7kEBda8g5T08n1ha817wAKB1jsk/87zU2KWXtO83VPqMOGfooa6I/wdVFe2dMmovZmxi4luKgg1fidDtEqdH26UGj4MtJXYQqAI3/IeQ2mwThUCaqn8o+6N1EM1MquRQkey9Wg59rnHXyeaetrLssEKyVe8UBgDCkBi0+qWX31ZaDeaayfPIZF8kUwR2VQRTh4KzmIsxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g3OUPT2anNZz1OYjn+u16V+qS1bkWrzc3shV9lSuVK4=;
 b=JmA0RY+6GydnVLsRGNNajKF3awCs0wMYgqqcMH/gd2UiY0W7Yz+nG0ydRRE/4Kh8Ao1LTtY+6nKS8Ye504ZW+cfVibr/N5aARKEJvFva4+PjRIT7aObnBK2LWQdF957d+0rv5m80zLuJG9QqyZV6mzMnbMzn0BahHE1ayqxBTF0=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4400.eurprd03.prod.outlook.com (2603:10a6:803:5a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Sun, 5 Apr
 2020 08:35:23 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2878.017; Sun, 5 Apr 2020
 08:35:22 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: "vincent@systemli.org" <vincent@systemli.org>
Thread-Topic: [OpenWrt-Devel] [PATCH] umdns: update to latest version
Thread-Index: AQHWCyRTFVgZBWnjS0K7M7eSFzX27ahqNACA
Date: Sun, 5 Apr 2020 08:35:22 +0000
Message-ID: <4930E99D-DDA9-444E-8309-51CBE50F1952@darbyshire-bryant.me.uk>
References: <20200405083140.121616-1-vincent@systemli.org>
In-Reply-To: <20200405083140.121616-1-vincent@systemli.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56016b8c-eade-483a-dd1e-08d7d93c4834
x-ms-traffictypediagnostic: VI1PR03MB4400:
x-microsoft-antispam-prvs: <VI1PR03MB44002A97422331B99014454EA5C50@VI1PR03MB4400.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03648EFF89
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(346002)(136003)(376002)(396003)(39830400003)(366004)(99936003)(76116006)(64756008)(66476007)(66556008)(66616009)(66946007)(5660300002)(81166006)(86362001)(8676002)(36756003)(71200400001)(508600001)(81156014)(966005)(8936002)(15650500001)(6512007)(6486002)(91956017)(6506007)(53546011)(2906002)(2616005)(33656002)(186003)(316002)(66446008)(4326008)(6916009);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MtZb5+ZQoV6BVUtdr6rN5XnRr2GyZmuZ2af0Ilx9uVZXyqHU3co0i6vdudmJxp7jC036MCW2vplWW3HUt0tqahBL32EmTbHlfDLAvpzbU9Kdqaq5Lj2wVKqC0fPGYubQ/qzz0WP9anlSH6R3y22jm5g4UCuuYDdjUuwRI+QVzw6fuoGJXgC02fz+EFr3NIXkgg4J5UXGKdX2KJVf91evQ9Ai/8Cv3xiowHA6uXyVU9SC7EkncklruSaHTav8sGw1FQXW2zq5fGRVguvOFZz9ehaN0Brc/KzdxexVCnm/B0l89ATwUntIdCW0sItZo3l0SJQTos01TU1Im6inRIeQ3ptf3c2qTnwPGhClZ5IQCNmwJKqO4clpoWz3B+D0RPIhbtyxFzrtvTkUte/wTdWQwRtyzWoNUEqFU3kvmXSrXy1vAry0c9Ms6Q9yAuCtQFE1S/P/2Ujdz7imr9fjmA8vTQ1OKhf1ME47l+v89/8IReZqFT52fMthrmQSRjYhp8iqbnV8Ld6H3uS+OETaW/9YKA==
x-ms-exchange-antispam-messagedata: t0q9mUz5yN8rlIfT6UJIlmYUGIQf5ybRYgNf3VAl5eyR8wxdEey1saerbbaCPs0fiBOUhKpOoEGpFmrsnFaxmVF74Sc9rPHGqzXLVQvkShh1FHDEsIzreQif2ImpQ7tbuR5XlkZSdbrRjWKY+vmOe8f6bzAb+CQFOHAi4Wy5DVRA/vyECODZ2G+Dwo3pZRNh
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 56016b8c-eade-483a-dd1e-08d7d93c4834
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2020 08:35:22.8533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v7c1dAOiK8ap5Ft1N/aqKh//PUYx/IiTHwp222tLb2EG3/LIVDCrFECiV2uR+qLhFSvgkO0Spasi5juvvDVzpJdTxIWKs0cXekytUpun2g4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4400
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_013528_788182_2FE0B5D4 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] umdns: update to latest version
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
Content-Type: multipart/mixed; boundary="===============3355654677834683114=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3355654677834683114==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1C0FA8D2-24E9-4400-9909-367FB2B87C58";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_1C0FA8D2-24E9-4400-9909-367FB2B87C58
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Nick,

I=E2=80=99ve already done it=E2=80=A6 slightly incorrectly (I got the =
PKG_RELEASE wrong no harm done, can be fixed on next =E2=80=98release=E2=80=
=99 date update)

Thanks for patch.  I should have taken yours!

Cheers,

Kevin

> On 5 Apr 2020, at 09:31, vincent@systemli.org wrote:
>=20
> From: Nick Hainke <vincent@systemli.org>
>=20
> Includes:
> - dns: explicitly endian-convert all fields in header and question
> - fix unused error
>=20
> Signed-off-by: Nick Hainke <vincent@systemli.org>
> ---
> package/network/services/umdns/Makefile | 8 ++++----
> 1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/package/network/services/umdns/Makefile =
b/package/network/services/umdns/Makefile
> index 7dbbea322a..9cbadeef89 100644
> --- a/package/network/services/umdns/Makefile
> +++ b/package/network/services/umdns/Makefile
> @@ -8,13 +8,13 @@
> include $(TOPDIR)/rules.mk
>=20
> PKG_NAME:=3Dumdns
> -PKG_RELEASE:=3D2
> +PKG_RELEASE:=3D1
>=20
> PKG_SOURCE_URL=3D$(PROJECT_GIT)/project/mdnsd.git
> PKG_SOURCE_PROTO:=3Dgit
> -PKG_SOURCE_DATE:=3D2018-01-02
> -PKG_SOURCE_VERSION:=3D78974417e182a3de8f78b7d73366ec0c98396b6c
> =
-PKG_MIRROR_HASH:=3Da60f9eb9428ac3256cd7c3c6d4207c116cedf4d212b82e2f86c1bf=
7c7898fcbb
> +PKG_SOURCE_DATE:=3D2020-04-05
> +PKG_SOURCE_VERSION:=3Dab7a39a5b5a0ff74601dd4e82145ca554c1e2ac6
> =
+PKG_MIRROR_HASH:=3D135de61439d823f3631fdcf735bc7a94355ba1d7bb0a2e3a0530a7=
5898e322ef
>=20
> PKG_MAINTAINER:=3DJohn Crispin <john@phrozen.org>
> PKG_LICENSE:=3DLGPL-2.1
> --
> 2.26.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_1C0FA8D2-24E9-4400-9909-367FB2B87C58
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6JmEkACgkQs6I4m53i
M0pk8A//ZM3jT+F9AbK8hav4dWpmNXEsijsCsQB9yIyaEO0b1axZPvPMJuKws6dH
/lRlrGZkWUcvcdPgLlohBArnEsjuUbbwKihHZ9LGtQNsM7LyfgYPk03SuY1Hk5gY
TWLFsQHmYsrqwDGOZPnKQxLrZP0MwgpQOySJ232QfqskKn0te86/zDRJa6Rr3D1e
nqO1PCsj7b3yEMW30/IUSdboqb2fTEJ4WB+QqDnS7xaRTQxzHe7E8GKcjDUsnYXJ
OLEdcc2vUWXwxug7iWFd97kR8U9nQkUIcSVZBTriLSoWv3pIkfy14nXrKaGvT3/1
Uv6v8qIx+ZL8wc4FWURnXO5UGz2Z7Q6DpmxSqWJKgCyskA+zHDUt4JogDNyjEzmR
eGzE+AtwigPalIH561perQLICjhrCyn5lI4npKY/vaRFkNHjGsUSWsXyBG9l35+V
bBUt0MWL31BzuHixb2unE/6IGz/IMqrdizLV2CPG6N79b0mZ5PylWGd209oas0ZI
I3Dq9yVgi7IBg/B+5JItmX6Dvqj8+dQDBi0JJOH4kIBGszp+w6rjzRaBMw0Cy6/f
o2Zic+0qjAbst+0X0ETxE1LcC5PDzoT7EV7vIunqU2CKisb/Y4hcNxEP8o6FvI9V
c21FamGgv0S6BbOYHGzsvuHc1niSQmBD9c2RNTKf4SQYy9rMYR8=
=CV4K
-----END PGP SIGNATURE-----

--Apple-Mail=_1C0FA8D2-24E9-4400-9909-367FB2B87C58--


--===============3355654677834683114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3355654677834683114==--

