Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0E51723ED
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 17:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=spcYlAYNbnN+lQNLeBKAnHjPffi6vVbb2brs3UoHkxM=; b=t34
	gfBa9HxutawVboMFxslhPlQ9lqzhc4j5Kc1qN+vFEINe5WppiMxU2kPGiasVUsl2kcbwtaDLxlRPy
	5kQaDMEWAJP1seEsvggdDWNxDIXCQrG5RfxUpKFUSHvBzUktG6bMhHiQyOi3g6NkhdisWe7Z17s/N
	hfC31fNeNsTiM8xbVRN8RTtz/xvsj+pz4gSylgyjLwIOCCzTlQZaVWgg//8hX7okR1flcE4qqoZMk
	eRydlMpFG5UwYqukqczNCq4WvCd/F17/7nxW3G0naEHNxJqj/AEamXGyOn5uZGRSx7k0YTHlV+RNJ
	JYY4Mfwoj1I5xGeGr/qT3bmdJicJ0Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MMc-0001KQ-QT; Thu, 27 Feb 2020 16:50:18 +0000
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Date: Thu, 27 Feb 2020 17:49:55 +0100
MIME-Version: 1.0
Message-ID: <mailman.34271.1582822214.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] 4k sectors in ath79's SPI NOR for MikroTik devices
Content-Type: multipart/mixed; boundary="===============1788307151804071596=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1788307151804071596==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1788307151804071596==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from smtp1.guifi.net ([109.69.9.53])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MMV-000070-8N
	for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 16:50:13 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.guifi.net (Postfix) with ESMTP id 48SzDP3HXcz426C
	for <openwrt-devel@lists.openwrt.org>; Thu, 27 Feb 2020 17:49:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
	content-type:content-type:mime-version:user-agent:date:date
	:message-id:subject:subject:from:from:received:received
	:received; s=dkim; t=1582822197; x=1584636598; bh=3GXC6riHPx+LVp
	cAN7FBdPxSWA6GVaYCKmCRieczRI8=; b=GKxNDRruPIW0EbKOkc39CkckXQf3VL
	IxobPvAusoVGJpijax+DCtyOrjKZqhWLsklWoTxvagqKaTCeMl66Bw2rF5isfgGD
	2q5Ff2k+89/lNIoyG9yCP7Qw8GUuzQTt2EgncMgXpP8QXiwymHLgcSmVlgffNX0X
	a+HOvm62GpXjCsAVdbFZYhfypBW5xFmMi1+tfW6nRO/4TCG6ehNQWNiDzE7mBfoG
	5zP8GCBDEvjQj0+o9gkzjuY7gkWB5rU6+lX/ioQutb95mqbPSjrQ4KRsUjzhVZUP
	XUFvxjGIauUlh2L4G22vofO3W1u3W+TVeekK8u+YnM5IWLRK5hj/DpiQ==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.guifi.net
X-Virus-Scanned: Scrollout F1 at guifi.net
Received: from smtp1.guifi.net ([127.0.0.1])
	by localhost (smtp1.guifi.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id w9HpBy-xixVR for <openwrt-devel@lists.openwrt.org>;
	Thu, 27 Feb 2020 17:49:57 +0100 (CET)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
	by smtp1.guifi.net (Postfix) with ESMTP id 48SzDP1WKQz425Y
	for <openwrt-devel@lists.openwrt.org>; Thu, 27 Feb 2020 17:49:57 +0100 (CET)
Received: from [147.83.42.157] (dync-42-157.ac.upc.es [147.83.42.157])
	by mail.guifi.net (Postfix) with ESMTPSA id 13EE26A4FB9
	for <openwrt-devel@lists.openwrt.org>; Thu, 27 Feb 2020 17:49:57 +0100 (CET)
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Subject: 4k sectors in ath79's SPI NOR for MikroTik devices
Autocrypt: addr=roger.pueyo@guifi.net; prefer-encrypt=mutual; keydata=
 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
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <9be8e482-18e6-7528-5f0a-ec42e19034f3@guifi.net>
Date: Thu, 27 Feb 2020 17:49:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="VmMurq1yJT69UK0Ttfv02mW6VeWiPtYRD"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_085011_746505_46407398 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [109.69.9.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--VmMurq1yJT69UK0Ttfv02mW6VeWiPtYRD
Content-Type: multipart/mixed; boundary="kLV6rPL2ggZeEC3l9ccPXmvFKK6ea6Ohq"

--kLV6rPL2ggZeEC3l9ccPXmvFKK6ea6Ohq
Content-Type: multipart/alternative;
 boundary="------------F0F4678BC3D84EB4E51911BB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F0F4678BC3D84EB4E51911BB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

Recently, a couple of MikroTik devices have been ported from the ar71xx
target to the ath79 one (the ath79/generic RB wAP G-5HacT2HnD (wAP AC)
<https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D6aaa5ce2=
c5138877e0f0504c3bd536b40e9af928>
[1] and the ath79/nand RB 922UAGS-5HPacD
<https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D8f93c05a=
591bd68e4d8eaa0a8468ce2263762004>
[2]).

Only after the commits were merged upstream I realised that, since some
of the partitions on the SPI NOR storage are sized 4 kB, the
CONFIG_MTD_SPI_NOR_USE_4K_SECTORS kernel configuration item is needed.
Otherwise, the soft_config partition (it contains the bootloader's
settings) can't be modified or, in the worse case, other partitions are
accidentally erased when modifying it (you can see the discussion at
GitHub's pull request #2791
<https://github.com/openwrt/openwrt/pull/2791> [3]).

CONFIG_MTD_SPI_NOR_USE_4K_SECTORS is not enabled by default on
ath79/generic or ath79/nand, but used to be in ar71xx/mikrotik and is
also in ath79/tiny
<http://lists.infradead.org/pipermail/openwrt-devel/2019-November/020358.=
html>
[4] (there was discussion on the mailing list
<http://lists.infradead.org/pipermail/openwrt-devel/2019-December/020864.=
html>
also [5]).

In order to allow these MikroTik devices correctly write to the
partitions (reading works OK right now), as far as I know, there would
be three options:

1- Adding the CONFIG_MTD_SPI_NOR_USE_4K_SECTORS to ath79/generic and
ath79/nand (i.e., to the whole ath79 target)
=C2=A0=C2=B7 PROS: it works
=C2=A0=C2=B7 CONS: probably breaks sysupgrade for other devices (?)

2- Forcing conflicting small partitions as read-only
=C2=A0=C2=B7 PROS: nothing can be broken
=C2=A0=C2=B7 CONS: bootloader settings won't be modifiable (e.g., with rb=
cfg
<https://openwrt.org/packages/pkgdata/rbcfg> [6])

3- Creating a new ath79/mikrotik subtarget
=C2=A0=C2=B7 PROS: it works, and all MikroTik-specific features and tweak=
s are
concentrated there, no technical problems or missing features should aris=
e
=C2=A0=C2=B7 CONS: mostly looks like a manufacturer-specific subtarget...=



Therefore, I would like to ask for your advice, so we can together
decide on how to proceed:

Q1- Does adding CONFIG_MTD_SPI_NOR_USE_4K_SECTORS now to ath79/generic
and ath79/nand break sysupgrade?

Q2- Which option among the three ones, or any other, is the best?


Thanks,

Roger

--

[1]
https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D6aaa5ce2c=
5138877e0f0504c3bd536b40e9af928

[2]
https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D8f93c05a5=
91bd68e4d8eaa0a8468ce2263762004

[3] https://github.com/openwrt/openwrt/pull/2791

[4]
http://lists.infradead.org/pipermail/openwrt-devel/2019-November/020358.h=
tml

[5]
http://lists.infradead.org/pipermail/openwrt-devel/2019-December/020864.h=
tml

[6] https://openwrt.org/packages/pkgdata/rbcfg


--------------F0F4678BC3D84EB4E51911BB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>Recently, a couple of MikroTik devices have been ported from the
      ar71xx target to the ath79 one (the ath79/generic <a
        moz-do-not-send=3D"true"
href=3D"https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D6=
aaa5ce2c5138877e0f0504c3bd536b40e9af928">RB
        wAP G-5HacT2HnD (wAP AC)</a> [1] and the ath79/nand <a
        moz-do-not-send=3D"true"
href=3D"https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D8=
f93c05a591bd68e4d8eaa0a8468ce2263762004">RB
        922UAGS-5HPacD</a> [2]).</p>
    <p>Only after the commits were merged upstream I realised that,
      since some of the partitions on the SPI NOR storage are sized 4
      kB, the CONFIG_MTD_SPI_NOR_USE_4K_SECTORS kernel configuration
      item is needed. Otherwise, the soft_config partition (it contains
      the bootloader's settings) can't be modified or, in the worse
      case, other partitions are accidentally erased when modifying it
      (you can see the discussion at GitHub's <a moz-do-not-send=3D"true"=

        href=3D"https://github.com/openwrt/openwrt/pull/2791">pull reques=
t
        #2791</a> [3]).</p>
    <p>CONFIG_MTD_SPI_NOR_USE_4K_SECTORS is not enabled by default on
      ath79/generic or ath79/nand, but used to be in ar71xx/mikrotik and
      is <a moz-do-not-send=3D"true"
href=3D"http://lists.infradead.org/pipermail/openwrt-devel/2019-November/=
020358.html">also
        in ath79/tiny</a> [4] (there was <a moz-do-not-send=3D"true"
href=3D"http://lists.infradead.org/pipermail/openwrt-devel/2019-December/=
020864.html">discussion
        on the mailing list</a> also [5]).</p>
    <p>In order to allow these MikroTik devices correctly write to the
      partitions (reading works OK right now), as far as I know, there
      would be three options:</p>
    <p>1- Adding the CONFIG_MTD_SPI_NOR_USE_4K_SECTORS to ath79/generic
      and ath79/nand (i.e., to the whole ath79 target)<br>
      =C2=A0=C2=B7 PROS: it works<br>
      =C2=A0=C2=B7 CONS: probably breaks sysupgrade for other devices (?)=
<br>
    </p>
    <p>2- Forcing conflicting small partitions as read-only<br>
      =C2=A0=C2=B7 PROS: nothing can be broken<br>
      =C2=A0=C2=B7 CONS: bootloader settings won't be modifiable (e.g., w=
ith <a
        moz-do-not-send=3D"true"
        href=3D"https://openwrt.org/packages/pkgdata/rbcfg">rbcfg</a> [6]=
)<br>
    </p>
    <p>3- Creating a new ath79/mikrotik subtarget<br>
      =C2=A0=C2=B7 PROS: it works, and all MikroTik-specific features and=
 tweaks
      are concentrated there, no technical problems or missing features
      should arise<br>
      =C2=A0=C2=B7 CONS: mostly looks like a manufacturer-specific subtar=
get...</p>
    <p><br>
    </p>
    <p>Therefore, I would like to ask for your advice, so we can
      together decide on how to proceed:</p>
    <p>Q1- Does adding CONFIG_MTD_SPI_NOR_USE_4K_SECTORS now to
      ath79/generic and ath79/nand break sysupgrade?<br>
    </p>
    <p>Q2- Which option among the three ones, or any other, is the best?<=
/p>
    <p><br>
    </p>
    <p>Thanks,</p>
    <p>Roger</p>
    <p>--<br>
    </p>
    <p>[1]
<a class=3D"moz-txt-link-freetext" href=3D"https://git.openwrt.org/?p=3Do=
penwrt/openwrt.git;a=3Dcommit;h=3D6aaa5ce2c5138877e0f0504c3bd536b40e9af92=
8">https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D6aaa5c=
e2c5138877e0f0504c3bd536b40e9af928</a></p>
    <p>[2]
<a class=3D"moz-txt-link-freetext" href=3D"https://git.openwrt.org/?p=3Do=
penwrt/openwrt.git;a=3Dcommit;h=3D8f93c05a591bd68e4d8eaa0a8468ce226376200=
4">https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D8f93c0=
5a591bd68e4d8eaa0a8468ce2263762004</a></p>
    <p>[3] <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/=
openwrt/openwrt/pull/2791">https://github.com/openwrt/openwrt/pull/2791</=
a></p>
    <p>[4]
<a class=3D"moz-txt-link-freetext" href=3D"http://lists.infradead.org/pip=
ermail/openwrt-devel/2019-November/020358.html">http://lists.infradead.or=
g/pipermail/openwrt-devel/2019-November/020358.html</a><br>
    </p>
    <p>[5]
<a class=3D"moz-txt-link-freetext" href=3D"http://lists.infradead.org/pip=
ermail/openwrt-devel/2019-December/020864.html">http://lists.infradead.or=
g/pipermail/openwrt-devel/2019-December/020864.html</a><br>
    </p>
    <p>[6] <a class=3D"moz-txt-link-freetext" href=3D"https://openwrt.org=
/packages/pkgdata/rbcfg">https://openwrt.org/packages/pkgdata/rbcfg</a><b=
r>
    </p>
  </body>
</html>

--------------F0F4678BC3D84EB4E51911BB--

--kLV6rPL2ggZeEC3l9ccPXmvFKK6ea6Ohq--

--VmMurq1yJT69UK0Ttfv02mW6VeWiPtYRD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEwCTDpYvv87wDBo8fWvSKN+NXZrEFAl5X8zQACgkQWvSKN+NX
ZrGu2Q/8DbhOp8Spu2a7hRtdc31/C5ez7kO2tRxM85ZwVY/W+vU57Xyglx9nrf0S
2OEXsgXyX4lHw+BklRJ6xoC5yHhbEhKTzfCP7u5kirpRjkoXlJtMolE8nx5JAgLC
DFKcx8xLuDXRUsuAGVVPIs3/beqRIQjuS4m3vvTHFkxBjA9N+GIpSLKwuq/Xd3no
tWjgbzd6rBg4ZAZ4nDHNwwQHrsOs7yqP8yAYI5sEudymkPNikvfDlJ9y/TeGVwfN
2n4cmB+wnvy4/M2v+wLrjzhiFTiFN6NNFdTxkQUNPiQ2Z6gnKXzl8bn0X3bnelAy
fxbWTD4Wl2XQggwq50HArc7+59bLX02MBcRf9+Gjpdb9pYskLZ31memDeiwI9bV4
JEyYataAcsf06Lp0ezB7ZYJyP70e/H8phCMU5a/JyV5PjBZ1OsZCSsIC0P0vGa1Q
bemeZ/jQNB3K+gx47na0z3IMjOg1b/YC5RV5vEYEm2WDMO/z/bk4yrV5lko2qKCd
dmVnYGwIwvIM1oYuCSbwkm5QfMm2ooxRiRLl1tfXWpmiea1IofDJHmbvDs30iIrA
yHxdqtfk1TXsijCRBGVAeQUJsEBejvi3SNmqveVgOkKfTd/DDd3uucVjydJIehJW
rdY4cn3HfgJ5U6REQO850s1makwYi6d7FbSi21BcqH7gQ5HgYIY=
=89eL
-----END PGP SIGNATURE-----

--VmMurq1yJT69UK0Ttfv02mW6VeWiPtYRD--


--===============1788307151804071596==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1788307151804071596==--

