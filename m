Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D201DEF10
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 20:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=04wBBmCPTYIrjJlqzxToPMCPmdNtycTRBzPv4c7DJX4=; b=IgoRRso6eHKO06GazGiHbIcgn
	7il00vQOL4VkRi8S3P6unoU+6PfmYpB2wh/cOfy2M84O6dfoqKPdukj6LoGMNE50PLigffJh6albF
	49T85SdLYsrpV+kq+FqeywAUZCvFluqqOqUA7rIsWIDA5bP4Sgrt9KdLXZcAR7oziEPwIKWNBnO0G
	QZac0xp/yLhh0P5yUmUD9eQajIl0lAr49KybvZlMa3bpm4Eb7FfLooMZcYlSJbIwa/glBCl7skEPS
	U5TJFMrdT4n1ALCkjJgTDBdVaUWs9J8q/M4u/iX2dWnjNt6FpV9Et4reWGgyK2JajC7kTCnzNPajo
	wAG9BmiMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCGj-0001h7-1b; Fri, 22 May 2020 18:19:41 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCGa-0001gB-9G
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 18:19:33 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MScDh-1jRaDu1TfF-00T0eT; Fri, 22 May 2020 20:19:27 +0200
From: <mail@adrianschmutzler.de>
To: "'Olli Asikainen'" <olli.asikainen@gmail.com>
References: <CAK9yiZBMx2SRcA8-V5nOoa=XhF4QZM372EopshJUbmATctQgAw@mail.gmail.com>
 <016e01d63062$ca598140$5f0c83c0$@adrianschmutzler.de>
 <CAK9yiZCffBehf-RP9vT83wYw5ChmRXtdCVmtGDb5GNtobk0fUw@mail.gmail.com>
In-Reply-To: <CAK9yiZCffBehf-RP9vT83wYw5ChmRXtdCVmtGDb5GNtobk0fUw@mail.gmail.com>
Date: Fri, 22 May 2020 20:19:26 +0200
Message-ID: <019701d63065$874a6c40$95df44c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQH3+87xE6VA6oNjyvGEMrEtINiz6wHdcRCCAjrMMf2oUBEK4A==
X-Provags-ID: V03:K1:yHBAwjU1MZgB5Fr8O2X5jnL8R53ugPpi1JMkuB9UI+/T2sK/2gm
 lYcpyGlWLrT679Gdx9iQHZ4DE97EA6bo14sn0ZCeu1zKZdCl5AwCaZ07sAD6RfSoN8YEu7M
 c7ZOaOFfcoIJ9rEh47Uy1Jl30VxPmkvYFEeehcCRpi9giNvg5sH6fgBsrNQyrymTudVra4S
 MpsH+ZT1xgYl+TcCrMFXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LdiiKiZ6AgE=:4+x/YWnXYVd9z5G7kYMJld
 1uqYXpGmFnUB1tG0KP4rOQylUssnteUKOJ97+033Yvztn63vgsxS4vzLfU+Y8Xg4t1Xq/Ucyd
 SK1m4o/QDObVh5naIRkge1kU3nA8iZl6Tg6lQ/EvMF1wQnYiMlDTHW6cCCMNYBXu8aZ+whKDN
 JVaW8GKVy6vTRVOLBosnARmSPmMAb23CH4w4zL7vvxm8NRLSc6yD87gNj0M6rmAVj4da1R5XV
 I1sncWIrb/CrIC01PhRn8JpXXUEmZdIBE9YGWmKRtrioOeErCYWc6+lD260L778wvXoaMqVL1
 EqMe5b92wRKDSQDsp6dkiU35IoStqyDr9ISmN7yYdq0l6MdfgtNKacK4EVuUqVNuiJ+HOaM7H
 k8f7KwakFNWw4/up4sCBKWNOQtjKzt8yRvCt5OyTJGlalH0wYEYBJTQz2cq7NpQqDhvIIC9eQ
 rvlF6p6QWjSaIw//gV14PHVowQfX4MdL+iiIFWtwQKQUTMRu4pEa6jmvnCpuzx3Sgsg2lN3Vp
 dh0gT/ZkV+LUTkrd0yhaExZsXS1x2eUcAuPlL+aGYkyEDpI5Sq8w593duPDrNXRAYLRFGIsbj
 lEFGfaxogW+rrqAK5HXAp7fcV2tLbsX0QtpMULk7pf3NoOTKgGa2dzcIe8h5TYZK6Tmq9K2Kg
 yJLkLZYpJr6fToLhVIHSaYeDeavmKZxGAKb9rYfwzrBVfsju2+NI8ZzT9Tv9BgL1tdACJ7kkQ
 IPS7yBr2dSyFz7FcNbZEllFxFhdC4VMR8790FGiVBhzJQgvSpPZzDmlMKcJtNdmX1KdXqAEIc
 Ejm8sBEZZT+rqcmd0zOgf504+a5E5iC5cEpRX6iwiElF4gBYr7HYH8gfmDtALhWOpokycBP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_111932_619270_245A75DD 
X-CRM114-Status: UNSURE (   4.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: kernel: fix awake-rt305x-dwc2
 patch
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============4700215262992787648=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4700215262992787648==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=OqKCEx+PjDBb/w=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=OqKCEx+PjDBb/w=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> Sure. I am a bit new to this, is there something I need to do?

Just answer to this mail with "Tested-by: Full Name <mailaddress> [your dev=
ice]" in a separate line, and it will be added to the patch automatically i=
f somebody pulls it from patchwork.

Best

Adrian

--=-=OqKCEx+PjDBb/w=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7IF64ACgkQoNyKO7qx
AnB8uA/8DOwkrnZ4y4m9YzHPoB2eAy1PdjxH+wTA7nigjvcjIKu3n0wem0b5KEwb
A9WMW+qHzHXKxnaF3pLjjan7I1DtuEmfu4q3E1XedVhSE8fEh4REL5q261Ot1YgV
3ILro/sgmjJqTJwkDjcEc9+mIlN+KsYdOMbOeOFdQma8YwLzWwKCnGr96ojXBFtD
AXssDWGbTO57KfnaW4E5RPZByQCm3u9tqlY223GYTmnRWL4CYGf+Axg9RFDbs4mi
CklaPOTy0yIp7kNF9XoHN4/eN2QWhcf6khWoBpiMYljNje2RQZU82NrgTfluGC1G
YmwlvSwMX83En4iE+nGxRSiUU0a1VaHcI9INeli5LJgQrl0COCjuVRGFeBJ1sZPU
h4HlQQUsIYnasI3xpyAku7Uw4PE92F6FobAkwxlQahWKaV1l4fssb7psMy/AF1Pb
HowaLbpRiaxeOGW1aZSyzvVod/OCV1caiD3xyRhA5eZ3d0heKZPxzx/9aNheG5yW
jNsqhL6ZQOLfiN9/aM0KZ2G5HipOn99KGn5bQVefwYbECoGdN0qhh4FgrJ8MrY/Q
QZgQEiUyi2OQ8PSLK7EadpDlXhX3/k7kP/1COQHGMBaWJ9/3qHC0xnufl071UOCp
jukrl4qL/lMjl+KU06s7C+5+5PqaOGvC1yCXuUxrN1+x7R8It3Q=
=uvse
-----END PGP SIGNATURE-----


--=-=OqKCEx+PjDBb/w=-=--



--===============4700215262992787648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4700215262992787648==--


