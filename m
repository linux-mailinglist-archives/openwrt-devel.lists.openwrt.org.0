Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06ECC131C2C
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Jan 2020 00:16:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pbfRxlj5OgWaw0YtwshHp5DnGIolP2amlnEynGQcqI0=; b=XqKcBRsMT8tYD5Jbc2NLV+FN3
	notzIz4J5mWBAvKk679k8G/xfbOCAROijn8ZfovisGOD+AgZ4np+S/vGjEVl5zGouzkiqnO3Y9FWQ
	bkyN4fCm1lGw42TGQCWnqxaUIjc3Fi1yqazPhvQNbh3nJ1WCPkjP5o68wO6eI1RkSzgLQWtogslmf
	qlPmu6Z+4pCHTZGFKXjRdPFe4p4NBkZC01sfjSkTV+Bamfo0mfLGsqQrNbiqftYlGwxrE4vACVgvw
	HavYlY6QC/OZmETP+1nLybDvFHQqV12J9RrH5tX5S75tnf+lLXLDFoBnUUreHIkchH1k5lrNU0dv5
	UJtdGjGvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iobbe-0004FX-3q; Mon, 06 Jan 2020 23:16:18 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iobbV-0004EJ-SK
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 23:16:11 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Ml3ym-1jZiWN3sSa-00lXTk; Tue, 07 Jan 2020 00:16:04 +0100
From: <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>,
 "'Hauke Mehrtens'" <hauke@hauke-m.de>
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
 <419e6c10-b330-300b-7912-cc67de5a02fa@hauke-m.de>
 <CANoib0H92u+9pgO=TVdkoAjiZbdq78x5jA79SX-Y8Zu2+W8veQ@mail.gmail.com>
In-Reply-To: <CANoib0H92u+9pgO=TVdkoAjiZbdq78x5jA79SX-Y8Zu2+W8veQ@mail.gmail.com>
Date: Tue, 7 Jan 2020 00:16:03 +0100
Message-ID: <000001d5c4e7$444b4250$cce1c6f0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHxRNThZdkkeYQN27DoL2uWc/xPGQJbtOBnAfs9ZPmnhI0iEA==
Content-Language: de
X-Provags-ID: V03:K1:sFiclNo9sW4fR7TqHrw5Gm8Ig6IWcG6fih9qcYxLBNvP+twbY9j
 gTbCwQCPYMNUtkW+Ju4wxanaRK7NvbyijQLd5dZL0/ubTIPdkQOusiQe76CEV4PWYx906SE
 x1UU/BDJMrd5yvcrqzc6G6msGmIPyIoxk/J/deISfdjqeDvhfcVIGEFFBHfgIyI6ga7SHgS
 nEDe8oGaS8b5bnuLYgnIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JIta+vccC34=:QHUZ46fcn1icaI2L0ah1YY
 l6YRWrPIgmpzXqlMnp9I9sTLRKDx68WtMnr3ZQQWOwArKRr7epiiaPrkefpIbXGP0FBPZfVnt
 jAxbga+T8yr5Bn9c7QxrvFfTH8p3sezUduO/FM6kU2xdUmjdhOmIVu2nWKIB73svdb+3qQwFM
 1r7TDpQ7Muf5WM0spIQGMjEVEdZatWDq5Wx0jVodTUOIIhChLMDI/vm+nGISJnz+WJnkTvY++
 YudRnmvBEezwclaV4VWkRKMI6YChLkMfRhQeplhVf/AiYPfvQPMa7wNpyOGVAg/2XTSXgZScD
 q+WguKsFnAQIgr7e5O6gEL7WYsJmi5xnnkAlEQAFDt3kS64BqZuozEJLIWL6iD1Kdr2GXM488
 zcIB7EvuNfKxJ2agVeQzNkwyH6wJ2DAEpH00i64kaccEh2INAfVgbQdO0jqfylZdPHB4GeH5m
 tT7Kj8yCpkG27xk0bHeIRQ69Q3vbn8+7RH+GtZKPt+lGgoyT7XIS87KzScUJjYp5K5sL/+8F1
 b31OCaoRtB1v5X0HeqSg5J7zeS4XkIiEkkZU+YheZGuo6qC1NDK5S9yfVrJgArI0Rc3gYW7dX
 r1br4JdFCqwO3I3vAjVSNzcUvLqB2YyMVHMHsYfs8ncf/h7Zva7etAEkXGWvFTqyydNVuF3Ju
 6haIufOnt7sM/2gl8t09p/zfDMX5zZf+VmieoypQ94DyoUFMu1OBWk8EEhGB/u1yYDPhK961b
 fwZ2Wbuj6fVyb5e/0TiZhxfa7eYsiV8pqzqCCsuDWWB1FQfnC8Vbf+s64C0rIolwkqvLX0zYo
 SOqN6n+LAygpunQzy1lnkA364H8X+/aguFz8fq/HbC1mZ9jMUcOxCYdyr2kt/gtG8h08qxoUw
 bm5TYIx63xfs8aIWxB2BRarL2p9RYhnlyEEgqYtvI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_151610_210984_ADD1785C 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: 'Jo-Philipp Wich' <jow@openwrt.org>,
 'LEDE Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1361722573166449413=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1361722573166449413==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=UL8W1F7TNJKcbu=-="

This is a multipart message in MIME format.

--=-=UL8W1F7TNJKcbu=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

make clean? (would be no. 6 now :-) )

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Dmitry Tunin
> Sent: Dienstag, 7. Januar 2020 00:07
> To: Hauke Mehrtens <hauke@hauke-m.de>
> Cc: Jo-Philipp Wich <jow@openwrt.org>; LEDE Development List <openwrt-
> devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
>=20
> Nice release tag )) Ever tried a build test before the tag?
>=20
> Tried to build
>=20
> Collected errors:
>  * satisfy_dependencies_for: Cannot satisfy the following dependencies for
> base-files:
>  * libubox20170601
>  * opkg_install_cmd: Cannot install package base-files.
>  * satisfy_dependencies_for: Cannot satisfy the following dependencies for
> odhcp6c:
>  * libubox20170601
>  * opkg_install_cmd: Cannot install package odhcp6c.
>  * satisfy_dependencies_for: Cannot satisfy the following dependencies for
> urngd:
>  * libubox20170601
>  * opkg_install_cmd: Cannot install package urngd.
>=20
> =D0=BF=D0=BD, 6 =D1=8F=D0=BD=D0=B2. 2020 =D0=B3. =D0=B2 20:40, Hauke Mehr=
tens <hauke@hauke-m.de>:
> >
> > On 12/24/19 4:48 PM, Hauke Mehrtens wrote:
> > > Hi,
> > >
> > > I would like to tag 18.06.6 release in the evening of Wednesday 1.
> > > January and then start the builders.
> > >
> > > I would like to tag 19.07 final release on Friday 3. January and the
> > > start the builders on Saturday or Sunday.
> > >
> > > Are there any objections to these dates?
> > >
> > > Both releases should fix all known security problems, this is
> > > release gating, but I think everything is fixed now.
> > >
> > >
> > > We now have the ath10k-ct small buffers version in master and 19.07,
> > > for the 19.07 branch it has to be selected, but Paul Fertser already
> > > proposed a patch.
> > >
> > > Here some people are complaining about bad 5GHz performance:
> > > https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2682
> > > https://forum.openwrt.org/t/openwrt-19-07-0-second-release-
> candidate
> > > /49593/41 This should be related to the hostapd update from 2.7 to
> > > 2.9.
> > > Does someone have time to debug this? It would be interesting which
> > > commit exactly causes this, we also have hostapd 2.8 in between.
> >
> > Hi,
> >
> > I still plan to tag v19.07.0 final and v18.06.6 today.
> > From my side everything needed is in these releases.
> >
> > Hauke
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=UL8W1F7TNJKcbu=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4Tv68ACgkQoNyKO7qx
AnB9LQ//ZWpgIew9HSh1KYZgmVGO2F525rDiVGgPOfbROCximUvJFg+RTeS2sEJJ
6o2APvCc0XC57Oq5isImzwbaCQ3eDi0wgDbnPQK8Kjx4mYb90aqcnxiy4Yxj28HQ
P4unU6GratNZsJcE01dB374lsJ9aY+ZMcmgRpOmT+W8DRB/nYewwAy79YwghH9OA
ZyS9evj/+HnkpOk+kGL7VKfEszEMAiDxj6/GrX7sf9AZnnXbQ1L3hyLhxSRYEpng
H0fXafe6HzeaKsRCrwXTmzUyNHDTcT/967mJlK0icR6jX4Oj1iA+l895sNwGAtRd
qYaPLYEK0MIhqNoDMFIW2WoYjN2NQh2/FqjyPzBhXLSx9ofhXxkLv9OEl+J+ND6F
rGCe3sgljY6UQQFGMf+Fe5lnkOiNxMLqKU+ANdqBGZsdrm5VK4dQUu8x/dy4uNAt
MCYgif/7sfkIBrEgO6XTlZSi5w1JSpVx0OLYQwDOHTZ83YSz9EeRqn6Hng2VMEbn
SsGMAvl0ORMaIWftkElpExZjODBWf7mML/AQABpU6rUQ2dqMz4VisiejqUTAsA4q
DmPQYqUtrsRcY18w55UY/BReFwi+5165FIxOvY6KDL5g0E4fIxZQgUTx1TIZn4rp
uWBnaPKu+IQfvlzxFBmB/bQF7mBOIl4EGe4KCtnV8Kc53d2voSg=
=z+1l
-----END PGP SIGNATURE-----


--=-=UL8W1F7TNJKcbu=-=--



--===============1361722573166449413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1361722573166449413==--


