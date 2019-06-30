Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B395B163
	for <lists+openwrt-devel@lfdr.de>; Sun, 30 Jun 2019 21:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GsPd5LcRLyCmR5PSYF5pvdtVpDErjODFx7Uy5gVCkxQ=; b=rtkeEcGwWn8DYLQmG6hKqsQye
	cppDRd4Nz7RYj4WZ97LEeA/qozPg0p82UVPKNWWaE7GR007ULzQnOCuPeapZ6IyE39WIrUBMLkouD
	pX1iKO00WSlz7JksdtEuwevvKjK+2L98bYjpVYqO8R5I7D4+810VYtIPLVxOlt+15OHoeJfzfopDe
	Dd90nzL/0LcnuL9wFesqdSL1XRphi07eliduCOwmVW7NRBqjCpRJ/aJpkGL34apfx15HDeQlLyiJj
	FftkauaUpy9e0j/JJTs+Kpvs5K+GuBEpRSEolxYCv20SDLYwstLJC1kRfX+0L4pOd9djZK9VaTF5z
	YL3yWIFdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhf7R-0001FU-4U; Sun, 30 Jun 2019 19:04:09 +0000
Received: from mail-eopbgr60080.outbound.protection.outlook.com ([40.107.6.80]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhf7F-0001Eb-NZ
 for openwrt-devel@lists.openwrt.org; Sun, 30 Jun 2019 19:03:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=ZnmxOm+9t2LW28jw3MZR+5PoO69i4lhDHSv3uAvg9UibX7U33N0tcaI3/2eocbcnvBZronVb5qf5cBKi0xRz+Fdi4INbTc9UKLN9X4RY0lVugFb9o+pAu88B9XDggO4R7Vhvoq0kSBAdgc8ktBbEDILV3yobDyisW8UTsoPMHMs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0gJT2r5u2oCVIDjT3zEFPn9eqauqbVf1frkZeEMkTVk=;
 b=uG+Xqyw1yAczOwP/iS5OiV/9hQdlUPzV38nF82hphXyktq7U/S+rl2ctCOqPaXN3h+PQjvdn6sUzafgkL1IAF57LwNtjnnlkCVv5hV8S7r1gEQUohtl3qDuHcm7qDCFGLhyamUoxnB1k7CmpyMnMZh51xYiq24J8tboN6MyfSbY=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0gJT2r5u2oCVIDjT3zEFPn9eqauqbVf1frkZeEMkTVk=;
 b=aVFy+KVWuMa4rxTEv231RvwyxGGLYQMCJWeJGcDQ61SQAF6lfbyDqmipN1QIJTOz/D/8+/5cUyoDkMUzXzAQDt1sEbExeJC42x25B1Dc2pmKtE6oqVqbDoH7Mhr4TGN7m5egjKoOmxGMQRevH9FtP4HMMbq4nARnsKQHS51BnwM=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3456.eurprd03.prod.outlook.com (52.134.14.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Sun, 30 Jun 2019 19:03:51 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::3d93:9078:239a:5c60]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::3d93:9078:239a:5c60%3]) with mapi id 15.20.2032.019; Sun, 30 Jun 2019
 19:03:51 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
Thread-Topic: [OpenWrt-Devel] Problems w/ "make defconfig oldconfig" after
 rebasing
Thread-Index: AQHVL3GOMLAAMHcEiUCwFR3ZLD+3JKa0jjcA
Date: Sun, 30 Jun 2019 19:03:51 +0000
Message-ID: <6C7EDAD9-F9C9-4FC5-A298-DF21D36AE562@darbyshire-bryant.me.uk>
References: <759B3B57-92A3-4688-B531-C4B97EF1289A@redfish-solutions.com>
In-Reply-To: <759B3B57-92A3-4688-B531-C4B97EF1289A@redfish-solutions.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa42b5b2-7763-4da1-1195-08d6fd8db091
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0302MB3456; 
x-ms-traffictypediagnostic: VI1PR0302MB3456:
x-microsoft-antispam-prvs: <VI1PR0302MB3456587DE19C8F9E7E5BEFE6A5FE0@VI1PR0302MB3456.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 008421A8FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(39830400003)(396003)(366004)(189003)(199004)(6116002)(6916009)(53546011)(6506007)(8936002)(76176011)(102836004)(6486002)(99286004)(76116006)(53936002)(6436002)(91956017)(186003)(4326008)(7736002)(508600001)(305945005)(81166006)(6512007)(81156014)(256004)(8676002)(14444005)(229853002)(25786009)(68736007)(14454004)(66946007)(66446008)(64756008)(11346002)(446003)(66556008)(66616009)(486006)(86362001)(73956011)(66476007)(36756003)(74482002)(71190400001)(71200400001)(46003)(316002)(33656002)(5660300002)(99936001)(2616005)(476003)(6246003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3456;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Q/ramhTway+uNSYLNxTJ0g2As5nPjd8Ug33wDcb0PEal+sl6eBzavWgrc3l2J9TrgDR0uaxXJFlG0+79UocHr80HzF0JISCB7irF8QlqZzod6fskWGbdBnjeCk5jdlKpZBzhKhwiPVNfPS+3KKhifvQylofGNTUSCC+buS6N18NGfGPJAG+wQ/Im5M6QZh/NBMGX6KTwgxYDqlvbMX0IEO70rg/cuR8hmQbr9cuxWjOU2L/jwRvveRORHyTZFhZr4r8HcVYHZxKjQ0frd0XTGSFdfg6k/GrF2A8VrM7aJBx014tj+eFW5IpcyfjiAMg6Sk0jqK2OUnVmd75txfBPNEW58F8N+TP/5CMxaKVm9Tusb4vYDJp2T071Ai4LhlzegQHBd8Tz331oE5uJd5CLbzo5e0Jh16pmIB85o4NG5Pw=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: aa42b5b2-7763-4da1-1195-08d6fd8db091
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2019 19:03:51.3606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3456
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_120357_817692_851FCF76 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Problems w/ "make defconfig oldconfig" after
 rebasing
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============0939956957849142754=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0939956957849142754==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C9CA4EA9-317F-4E6C-823D-F58D1571A7AE";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_C9CA4EA9-317F-4E6C-823D-F58D1571A7AE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 30 Jun 2019, at 19:27, Philip Prindeville =
<philipp_subx@redfish-solutions.com> wrote:
>=20
> I=E2=80=99ve been busy with other things, and just had a chance to try =
to get caught up with OpenWRT and my tickets, etc.  I rebased openwrt =
and packages, then did =E2=80=9Cmake defconfig oldconfig=E2=80=9D but =
I=E2=80=99m seeing:
>=20
> WARNING: Makefile 'package/feeds/packages/zabbix/Makefile' has a =
dependency on 'libmariadbclient', which does not exist
> WARNING: Makefile 'package/feeds/packages/zabbix/Makefile' has a =
dependency on 'libmariadbclient', which does not exist
> tmp/.config-package.in:55: syntax error
> tmp/.config-package.in:54: invalid option
> tmp/.config-package.in:13106: syntax error
> tmp/.config-package.in:13105: invalid option
>=20
> Looking at this file, I get:
>=20
>    53                  select PACKAGE_attendedsysupgrade-common
>    54                  select PACKAGE_ucert if =
PACKAGE_ucert-full<PACKAGE_auc
>    55                  select PACKAGE_libblobmsg-json
>    56                  help
>    57                   CLI client for attended-sysupgrade
>=20
> =E2=80=A6
>=20
> 11304
> 11305          config PACKAGE_kmod-ipt-conntrack
> 11306                  tristate =
"kmod-ipt-conntrack..................... Basic connection tracking =
modules"
> 11307                  default y if DEFAULT_kmod-ipt-conntrack
> 11308                  default m if ALL||ALL_NONSHARED||ALL_KMODS
>=20
> etc.
>=20
> I=E2=80=99m building with:
>=20
> commit 4c8d5cd20e467c76db185742f9f92fd64eaa36c8
> Author: =E6=9D=8E=E5=9B=BD <uxgood.org@gmail.com>
> Date:   Thu Apr 4 03:42:16 2019 +0000
>=20
>    x86: add EFI images and make iso images EFI bootable
>=20
> cherry-picked into my tree, but this should be the cause.
>=20
> Anyone have an idea of what=E2=80=99s going on?

There were some tweaks to how config interpreted package definitions.  =
Unfortunately =E2=80=98make=E2=80=99 doesn=E2=80=99t pick up the changes =
to config=E2=80=99s source, so it needs to be manually cleaned.

make -C scripts/config clean

Should do the trick.  I got bitten by this too :-)


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_C9CA4EA9-317F-4E6C-823D-F58D1571A7AE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl0ZB5YACgkQs6I4m53i
M0rPUQ//adFYkELhjjALE3+zqrlKKN/t7XQEOJAqBQ//NrWd5yDQKFsLDyY07HJg
JgZM+ak3+jZfu3lkhksdS6l34YqpD+o2SHj4JshtT6HWMcDdwvUD17oGQRefzYBL
kwPeEqbEXRwmyGqg/lY9Rp8IZR5YZ5KVLiYdGMyZU1MaZl5XOvTn7f+soplLzw8a
i7aLI8/2wTz49ZDVmYullK6sLD06rRgIEgvv8QFR4znkMEJGrETNew+EYLLJqOcX
0216rWAZ0IsB2cQZ/uOrY9h9asX0TOJAK7AqWfUoGu+bN9NNFDvIyFg4ZMlRcEEu
gc4axgh/BmSFqIbFlCKwY7ivQD67cTw3RfMSaQoZHr87k57i2WKRZo3PnBXB5Kqb
RwgpK7tqTCUhcXQMP/RekTXrEq5Hjt7DsQvEf3NstrZmI6iseOInQkejCxtpZETz
3B4WMTltI9cWW0fzO2yUBpRVaMfKW+Jn6Ewz2hKYnrm8xPKz4BsjcRODMpT58PaI
4XyR1GjwaARv/rq6/0ZPzHAlQJTWgdHfLmzgR2hA/SA/9LDeTaKGScJ3+G3D7bmp
DJgBpifNuIRwdWLZSx6ifVR7XbF4IrOj0355mRxUqe3lUG2WOGQZVkT04jJkD2Ra
gC6W40kblBCqa5qibZ1wzsB8tH5ORSglLSPrAOxNo4M8FG/UYOo=
=kWgi
-----END PGP SIGNATURE-----

--Apple-Mail=_C9CA4EA9-317F-4E6C-823D-F58D1571A7AE--


--===============0939956957849142754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0939956957849142754==--

