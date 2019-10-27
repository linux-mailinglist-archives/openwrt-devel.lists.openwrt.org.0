Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18816E655B
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 21:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I0MRrW9tNZiovddqaYbbkC4cc7XShBUSQg+phUekZK8=; b=S45NCyMncenG0gJLLsQwgssW7
	9j+FC9TQgFAN25buxAxZNpG71oq9jMJDAS/IumB8SZjW9KrFtMTik0isK5vAOHWI24Pv1AzJzDUdz
	3VlGZkLXyPsSnCHP+zJv0AjTKsdNaeb4IfKACcDQagJSyFUcT/PDJaIoIbUbrGXGqpSeSwXGq1127
	s38sl6w/H3SBu62tnZhLGFPMEcUt8E54nnCSdIccWoQE6CqmFnCmQ3n324h0Ax8ZTapdk8EIrtTeP
	MRC3dbAh5TaXaO1mUPCXXrA9I41qeIigRfpFvY0kBTTMI91X3L3r40UPX66h67VeQK2+jab960WXA
	t044OsuJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOpDU-0001un-Qa; Sun, 27 Oct 2019 20:32:48 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOpDM-0001uH-8Z
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 20:32:42 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 46873A3B8D;
 Sun, 27 Oct 2019 21:32:35 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id I-WIMHHU-dVT; Sun, 27 Oct 2019 21:32:31 +0100 (CET)
To: Rosen Penev <rosenp@gmail.com>
References: <20191027174438.25795-1-hauke@hauke-m.de>
 <20191027174438.25795-2-hauke@hauke-m.de>
 <CAKxU2N-fFRibJJqdQHgRqPiSTQ0Pi-cQe-Tir-Ac5tC5kgK2+g@mail.gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <d2486e48-e218-063c-cd10-a655d3539126@hauke-m.de>
Date: Sun, 27 Oct 2019 21:32:15 +0100
MIME-Version: 1.0
In-Reply-To: <CAKxU2N-fFRibJJqdQHgRqPiSTQ0Pi-cQe-Tir-Ac5tC5kgK2+g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_133240_611758_11D87317 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/6] buildsystem: Make PIE ASLR option
 tristate
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
Cc: Felix Fietkau <nbd@nbd.name>,
 Daniel Engberg <daniel.engberg.lists@pyret.net>, lynxis@fe80.eu,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dave Taht <dave@taht.net>
Content-Type: multipart/mixed; boundary="===============6338388452135195405=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6338388452135195405==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="CFBEQ6XXjQWnuH2yERm6AUmFSNofVPmSW"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--CFBEQ6XXjQWnuH2yERm6AUmFSNofVPmSW
Content-Type: multipart/mixed; boundary="zyGE6HSKw74JfPVXl8xaudTMuhkb49WrV";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Rosen Penev <rosenp@gmail.com>
Cc: Daniel Engberg <daniel.engberg.lists@pyret.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>, lynxis@fe80.eu,
 Dave Taht <dave@taht.net>, Felix Fietkau <nbd@nbd.name>
Message-ID: <d2486e48-e218-063c-cd10-a655d3539126@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [PATCH 1/6] buildsystem: Make PIE ASLR option
 tristate
References: <20191027174438.25795-1-hauke@hauke-m.de>
 <20191027174438.25795-2-hauke@hauke-m.de>
 <CAKxU2N-fFRibJJqdQHgRqPiSTQ0Pi-cQe-Tir-Ac5tC5kgK2+g@mail.gmail.com>
In-Reply-To: <CAKxU2N-fFRibJJqdQHgRqPiSTQ0Pi-cQe-Tir-Ac5tC5kgK2+g@mail.gmail.com>

--zyGE6HSKw74JfPVXl8xaudTMuhkb49WrV
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10/27/19 8:05 PM, Rosen Penev wrote:
> On Sun, Oct 27, 2019 at 10:46 AM Hauke Mehrtens <hauke@hauke-m.de> wrot=
e:
>>
>> This tristate choose allows to select to build only some applications
>> with PIE enabled. On MIPS binaries are getting about 30% bigger when P=
IE
>> is activated for the, which is a huge increase.
> Some of the size increase can be mitigated with extra compile-time opti=
ons:
>=20
> TARGET_CFLAGS +=3D -ffunction-sections -fdata-sections -flto
> TARGET_LDFLAGS +=3D -Wl,--gc-sections,--as-needed
>=20
> LTO sometimes causes problems but the others should be safe.
>=20
> PKG_ASLR_PIE applies $(FPIC) to both C and LDFLAGS. I've noticed that
> applying it only to the former increases the size but not as much as
> with both. No idea why.

Hi Rosen,

Thank you for the hints.

I activated -flto for dnsmasq and the size was decreased by 8% which is
nice. I will test this a little bit and then send a patch to the mailing
list.

The GCC documentation says the following about -pie:
---------------------------------------------------------------------
-pie
    Produce a dynamically linked position independent executable on
targets that support it. For predictable results, you must also specify
the same set of options used for compilation (-fpie, -fPIE, or model
suboptions) when you specify this linker option.
---------------------------------------------------------------------
https://gcc.gnu.org/onlinedocs/gcc/Link-Options.html#Link-Options

So we should set it for compiling and linking.

GCC can activate -flto also when only some of the compile units used
LTO, but it should also be set for both steps.

Hauke


--zyGE6HSKw74JfPVXl8xaudTMuhkb49WrV--

--CFBEQ6XXjQWnuH2yERm6AUmFSNofVPmSW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl21/s8ACgkQ8bdnhZyy
68elhAf+PE6Zr16q1xWpR2BmbVaz9DiYxIZdNJGMyGVOZKcmnbAs5Adn01pc//0Q
DtXoWXDmCpGpjSsRtRnnGHW7BMKllqODxm+N4nQVkTkI+4YkQoGo7CXaKQdWMc1M
eN3q5nA0p9DdcLjYa2c1Hzjf8oxCTSoc4CGm04xzrxF8f2DRHWo3HzTnzuSeq9LZ
osN5POEEPN3J4T+euxSMFxoMHoB1w0XE8+OLIoPGALn1/SZ8RVSaUqFpA0ATvl5T
2MMyG2ARUTnybNpe2cJaguBdLPurrzRKyiNv4HlKjq6S0MEQ4Z7mXlxctWey1CQ6
RJyocW2DxQGr+S1qW7wU3V9fSD87og==
=/SDh
-----END PGP SIGNATURE-----

--CFBEQ6XXjQWnuH2yERm6AUmFSNofVPmSW--


--===============6338388452135195405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6338388452135195405==--

