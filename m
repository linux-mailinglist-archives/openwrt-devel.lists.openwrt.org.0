Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8070710FCE1
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 12:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hSXSP5BqD9KHtm9LLGzXk1xrS7UiL/CrwgqqqDqlb00=; b=DdItx5Ul/G7Mv6hx47yS4jUG2
	M63l62DKC+JNiT7enq0LuZPYEmYGo5/6XW+8WOKLyp0LTInE8qlS+RI1IQ+Ayn0sZlH15S9sK56oX
	tX3D1+/mbr63rH0dN/Qlhi2D3LVyFi6Bf8f/G69WJ3feNrjzXr/qglwqxCG7zbPkjoEPbiI+yZHhk
	Bl9Uy0TmpLikDb2v7528IGKLXJ6EM/7BkN7tUNVOcvpSc9A/Ax3gv3vl5d5/a6csZTPrKFfVHOgyV
	Z/V86L701h3QRDM5EBp3kcZMEd6Zx0n+55r8hGP2FzIFHnAkgEQTLXimvqMburgxX0oalEEXrv8Qn
	TxEMD/7dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6id-0004wv-MX; Tue, 03 Dec 2019 11:51:51 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6iT-0004wK-1y
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 11:51:45 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MfL5v-1i9NsJ0FDv-00gowz; Tue, 03
 Dec 2019 12:51:28 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <000801d5a96d$5e3d4220$1ab7c660$@adrianschmutzler.de>
 <6e48f0b6-794b-5d28-708f-f6d26204e33c@linux-ipv6.be>
In-Reply-To: <6e48f0b6-794b-5d28-708f-f6d26204e33c@linux-ipv6.be>
Date: Tue, 3 Dec 2019 12:51:27 +0100
Message-ID: <00bc01d5a9cf$ff1c5930$fd550b90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGTXJoeUjZX+dYvmEdnKnqdj0FkCwKX8CklAfcicwABEz4bpQIJOHK5p++IpEA=
X-Provags-ID: V03:K1:JxRkZZLM+WTJltqmBhgLkRykDupJcGWiFvvRLd+erH5WOhmtoDZ
 4LM2RqJ6bGUxph+huVmZAN6tgJzzzZcsnZp8xjFis+d2SRSwuDFAekCrAkfc1+U44mPNk9S
 6GxJ1OzmXc4OYiusGWZjik64/QBugZJRPF5DJ5TDENaE0rwHarAA5tBK2te5THIcbfTiR2j
 5Zvhf3xIK6vBI/UXSrH3A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GoBnEqw/WdI=:dPWNa9GMqnZoADDHyjyguh
 uwFkzQlwaix0bP+w7R8eO76S14aLXdBTmYohhN+QyTh8WUHYypP4AtwWTTECUYB44KLCpMgYZ
 tpVs0c77GNqfpRxyZGPTTRzf2hdNesMH9PmPenir1iQ+bnVsRlDREF2hBvlcHvrLJSGTqCT7O
 GVgLL+hHN0gyan1LNgdIWoTYh90q+6nJbmoLwcgcA1AyVuvvzIjDxuZV17c48NPeDthkAmAM7
 tstGe0IZmBdSLVKO9VnIKcC9BiKMsNpBH/1OHgVPeHb623VpYA6HAkGnpunn8Jq+mulQZaYbO
 YYy1dnyjYxlpZko5YgTO9dqa8RLzBEbE7vUVerWT+QfDDqZHJMelinyGcAc5JbJ8ewsaOOh8J
 b1xLVEg7nufMiH7B0cXmHTS5UoyjUiCZpUGdQGHNbWLJLRYyCcH9Mll+7QhCWEtTtYAP9tiJo
 BbR6epTkWy8oeiRG9KYhMr3h/HmCV27tyiVIqthSPp0XoovO0uvYynIKygxu9kI6qPxpJYfva
 oY81qHiB10KLUL4tXeDSrt7BBVmDdnQOdnCwV5GBasnQXYcAb25GQyrFEZuoOZfWJZjOd3Fq0
 9ZXzJouisFFSwGcFjMU/aiQlEfFKZlxRQ+45F/KUZ3BsqqZWK1CNhSwNWNIoDYmGDMQ9tIuzY
 ITEcz/gT/nNxry0w3V5LrZ746O1VhJBqmEdJ05nISTc4simME++Bd7Uteg6Hy0QKu+vad4FWG
 ok9CWVNgcFAwGWLsTdBYI7c1QPQBeDbmVnXWo4IedyYl/F1fY7wlc1JEYwfrxJA3QPNuoe1ph
 3jFglvb4YESEEKG+hjgrNMZYlc/BbYCW7Nat1GOynwKDI3sHXAfiXBxBX+p1Ep5LrhDhVN3QU
 YQT1EpjpyZKMjCmE6qBDxW7bphcHptxngtkXLrebA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_035141_388822_1340BE49 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 pozega.tomislav@gmail.com
Content-Type: multipart/mixed; boundary="===============8546910803314313106=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8546910803314313106==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=V4GqEWzOZWvnoU=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=V4GqEWzOZWvnoU=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Stijn Tintel [mailto:stijn@linux-ipv6.be]
> Sent: Dienstag, 3. Dezember 2019 01:16
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Cc: pozega.tomislav@gmail.com
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti Lite=
Beam
> AC Gen2
>=20
> On 3/12/2019 02:05, mail@adrianschmutzler.de wrote:
> >> -----Original Message-----
> >> From: Stijn Tintel [mailto:stijn@linux-ipv6.be]
> >> Sent: Dienstag, 3. Dezember 2019 00:58
> >> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> >> Cc: pozega.tomislav@gmail.com
> >> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
> >> LiteBeam AC Gen2
> >>
> >> On 3/12/2019 01:39, mail@adrianschmutzler.de wrote:
> >>> Hi Stijn,
> >>>
> >>> does the device have a MAC address label or imprint on the box?
> >> It does.
> > Which one is it? (eth0, 2.4 GHz, 5 GHz)
>=20
> 5 GHz. Does this need to be added somewhere? It's the MAC address of the
> wireless chip on the PCIe bus. As this is not defined in DTS, I don't
> know how to reference it (to set label-mac-device)?
>=20
> Stijn
>=20

I've recently made an effort to include the label MAC address into OpenWrt,=
 so that's why I try to advertise this here :-)

If not available via DTS, you can specify label_mac in the MAC address sect=
ion of 02_network, e.g.
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/generic/b=
ase-files/etc/board.d/02_network#L296

So, for your case it looks like you would have to add

ubnt,litebeam-ac-gen2)
	label_mac=3D$(mtd_get_mac_binary art 0x5006)
	;;

inside ath79_setup_macs() there.

I've tried to provide a short overview about the label MAC address here:
https://openwrt.org/docs/guide-developer/mac.address#label_mac_address

Best

Adrian

--=-=V4GqEWzOZWvnoU=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3mTDwACgkQoNyKO7qx
AnApsBAAnrXF3Z1eAnWoT6Qdhb+4YzfArYmRWhFiAeOZohL3QpLGvTc7qfqtGNgc
dYwljAV2MSaV9iaUNSggxroQKPTwo9PWicpLH+HvWIsHCHqzZjcaxA3nBjWFjWDK
FZd7c+px4sOlAGegAjDenZxffmmB3Hlv/helfPsCM4S3n7Og+IiMFa3E+jWs2BMV
tQGoI47BvOdDPfLtg3E+Eydv9uA/DivCxyFWpZKrP6vYzBFsOsyYTEO8LkVilX6m
ceUhkUJJcBJNqWX6bRploEaP64wImznaAFdn//pOMd3nmgksqS4yk4dYfPxAK/QG
r5PH4Q8dp7MpGrxnYMWpWWYQh667zMghiq6mIljoJsm7Fi2wgxw92LSgZxdkV2xM
9rAXbW7mw90lFOxfPxMSFac0Af6XWcpsQFqjvTfrgpE5ucWZz/5Yc0H6Q5m+tosg
ii2Wi0ZmukxrChAcWxtDLM8E4bIDDHIVDccO52KhZyIQ3hZKsrIrAjyrdx3BqggM
i9nOiFgMETzE/04DLVp/ByS5XB1yHbeJ0cpNszepdMW8IcFdGeJSBLXXieANASdD
GKwDC7o+YOyS9CNjCfA/IjoTU22er27wCo1oeI1aM7bnTrYLeE6Ck+Sr9S9BaxWN
52v68EJPunjMnuKPoTLnv06Huabpe572jifvqSrnGAn73dAVSx4=
=Z+97
-----END PGP SIGNATURE-----


--=-=V4GqEWzOZWvnoU=-=--



--===============8546910803314313106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8546910803314313106==--


