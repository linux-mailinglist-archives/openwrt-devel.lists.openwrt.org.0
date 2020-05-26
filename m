Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0F71E3389
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 May 2020 01:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oyThwWLoJhEIv9yb/exh+AJr2nRF+JHgRGYWOq9XEds=; b=nMBZG18SeGKfarZAYda7gGoM3
	Q12vaKXALe+gfSmWo89/U707qbAavRNFDAUyHJXr8UStH804qBocg2WzM9MdvEV7bE97fJ/fAItVc
	vk4XMBMukZXDdlS9NTSiP1l2P7l/etXxYHWGBuGB40VYDlfzhANDAt6mCEPjdJGodVFbgib1tMgCW
	66cPFKYogx25wiK/lCP+pFF4SoljAQt/WUEGjBGb7i5IQydKRzYltzeLEWwPOM5zr3GJkUFEXLBud
	CGYzFF9FQiEKu4ZVlGTcQb18uQ1+seEUp19/UfTCsw3TdtkfBQD2Uav5dk+0/rJR/v4xBUuBWNvtq
	W5k34JnUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdioJ-0005Ke-Bx; Tue, 26 May 2020 23:16:39 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdioC-0005K5-SM
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 23:16:34 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MplPf-1jE0Ri3yBx-00qF9G; Wed, 27 May 2020 01:16:28 +0200
From: <mail@adrianschmutzler.de>
To: "'Pavel Balan'" <admin@kryma.net>,
	<openwrt-devel@lists.openwrt.org>
References: <20200327033255.19291-1-admin@kryma.net>
 <007001d631c0$e40282e0$ac0788a0$@adrianschmutzler.de>
 <d73a20a7-fd7a-0175-9de0-5022091522ef@kryma.net>
In-Reply-To: <d73a20a7-fd7a-0175-9de0-5022091522ef@kryma.net>
Date: Wed, 27 May 2020 01:16:27 +0200
Message-ID: <001d01d633b3$aeda6840$0c8f38c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQLmfmgQ8h5MRVPKuhP3V+LICnBqcQH5An8JA1rWmjimb8qe8A==
X-Provags-ID: V03:K1:zbiE3ItzUrHCs1ljaBckteF+/PnC4ClpkbXLpha7HNUZOU4VeHP
 S4hDXQCWpNlfcGba7yi6rH8nMoT3NY11G5vTK6RIgSyxvbcKEu/ihUCLCiqFhLVDvCAb46A
 5HpFLtIAwDb4yl0f1kOQ+7voq4VgP9kkWfA1rM99CmYe3UN0v+kcDIrXA0wbWzeSBpcr5bq
 fSzrEweVRGq9Hwd0B3sKQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FGQ3eFQp5wU=:55aJe+xmGyr6hvSdRNMS8Y
 LsRxzKaAN3sGBQzITq4mvBRKP1aJ1JjOsNF5aN+KOmyxQwULCqFSjaKaADbPHpljpJl8DM7yH
 1MSDFK8e8w/PGRDpmzZFyZ8Fn2iPEtwdfLEKWNE1oo+nJGHPtwqr7Wh1ulTbBa8N9LvuQQcD1
 LXe3nox53Tb6HgSnQKdwfnvZIDu+lJsfcQZ35JxhHl+Q1+U6M+rFgPrtoRDWDlBffg4XlFenn
 rkusxT42NfcKvvTyr6ja0+DbfqQrw9qIdAgVDOWj7U2L9JrggSrwDicCp/Z0sgFtPZrv+h4pl
 Y/Pd8oyhcvb+YiAEZvm2EL+6zRtIA010AhfVUXCU7SNf0rY03nAk+PVBX4S8X0db+s/HA+lq1
 A8PhqsMloFJIYVuxcNPZ7j/bwuVNNQJs8CQnix+9g90tq+e12EkzSQPek4wb2fUbydW1DagkV
 bEP4IxdjoM8HnJt7kPrQKVURM0X0hX3fTbVqTIgfirV9Uy2Mmykgj2z4Wv3jvxQSyK52d30VX
 sAeXfHlWGiz7FCpd/FjAOlEr0cdwBg+OFDgygrLr+bNDQ1xcXS8b11btfSIaDk6AAroZvOCOv
 v/8RQaMKDZVFmWdPQQ+otfE3Y5jW49SyJ1VDuUGT3MU+YP4e0k+IqskV85NoPevfSJym9iATF
 0UKC6ZLfaZ64do/uOBw7OQ0+TfzBOkZBzbFexvhQu6gH9LvB6qDMqiVn7qg/Mfiyram1sTgYj
 V63Mnz/LopqagkaNN2ymnzJs2mQfU9iqCwLKWgm7mU3NYz5jq7rQwOawOrH9VADHHE54MHBlc
 fiXNioft42dv5FrAnm5GLUbbJQ0AsjRXYSwRVWI3azz/7RdsyTyFdRY07ki1z0or6OVzFGo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_161633_206621_6E7110DC 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v6] ath79: add support for COMFAST
 CF-E130N v2
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
Content-Type: multipart/mixed; boundary="===============1660657215441989138=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1660657215441989138==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=3y7hi2iRdhLfaw=-="

This is a multipart message in MIME format.

--=-=3y7hi2iRdhLfaw=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> Hello. I have just run-tested the patch from your tree on actual hardware=
 - the web GUI works fine, as do both internet and wireless interfaces.
> An investigation into the art partition has shown that there are four seq=
uential MAC addresses stored in memory.
> The first and the third are back-to-back, addresses 0x0000 and 0x0006 res=
pectively.
> The second one is located at 0x1002, and the fourth one is at 0x5006. I h=
ave no explanation for why it is like that.
> To answer your question - it's not an exact match, but it's close to that.

That makes perfect sense, as these are the locations of the addresses in th=
e calibration data.

Can you translate that into a list of addresses (you may just report the la=
st one or two bytes ...) related to the locations?

0x0 aa:bb:cc:xx:xx:f1
0x6 aa:bb:cc:xx:xx:f2
etc.

How are these addresses assigned on OEM firmware (lan,wan,2g,5g)?

Best

Adrian

--=-=3y7hi2iRdhLfaw=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7No0YACgkQoNyKO7qx
AnDsBw/+PwIEXyj6mVFH5MC8FMZgYaCnsVDTGaT4K96Smtioh+1IE1x4XDtVJcve
S2D6omuCHGN1EfXCV/mUTbf9oQYL8upHhFjKNK12cTqfm8EPQvUUHIYz/fXG694W
f7QACTuvVOdi7lE9/DqfnhhZZVD1/G6XZj3/gln5E5Fe1i0quMIODELBmjP+6nps
8gAySQTM/iaHl5c7k4aJKFZQ8EeY1xTkdX7Z9qibiShIxbpZWMvzNBHykpShDQP6
FrtognSw9M4wyp8HnsDPbgS7cpXWf//ALdTD5RFuURDMp7fHpvQE7KSG1erf8RYJ
ID03xxpWR4f6fa6U3AafPxuBsUgYYKYVdBovQl5ty2/3zTwMEud9Mr/wX7ZIK5R6
oc4KQ2mNZ9XAkHIvx0gQHUxohO7ELmaTRUSXOZEQ2SF3iOKM8FBb/m5XwFXLe2Ci
6BQGKzeurd7Uhh10ot4aCH3+8+rNRiKdslH4HxFtPptcBH7oYZIJK9pslUuU5dm5
9l/sEgASWlQTboqQZSjl6+HYmHrEnGy9+dzNJyTm9S6Uyd9XL6+vk/vanJyPzjZq
5M9eUcs5RLgJMaNZLQmA0m76KZtywiRoDc2M3eSLqb4I7xADQaOCzYgQEsFOBNEm
YYB1q5EUQeK3yN95utx3PAMQ9FTBFp/2W3OyJI8Qq83aieA69do=
=RjA7
-----END PGP SIGNATURE-----


--=-=3y7hi2iRdhLfaw=-=--



--===============1660657215441989138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1660657215441989138==--


