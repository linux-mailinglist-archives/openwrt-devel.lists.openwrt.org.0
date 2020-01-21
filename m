Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAAB143C66
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 12:59:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ti75zRoWDGXrLCqoLa5RnWrcyBEw6YlKjvlbkmZqjGI=; b=jVhesWjBqeucJOa4aVIkt1vif
	/5/+dOwxJHxtKfs8Tijnf62v7YA1yJGyIsQvxxN2kizGp/w9o031npzPGFwH+b0zetUXDPY2WPlOn
	zruRjzjecaD45xIBCIabWgwNDA9DZ4k3fdkNa9cOczjrD9K8Gqbakji9BejJa3aJTj0sNfioS/hLv
	3z4/XJg5VoR1D5BvBe532hcxw655857ntxBZY7yclkiBZjEEuKVxqFtoexZ+oA1drwXZJzMW4JWE9
	yZKBA7BPJnUXyQIz6ewo73GFTWjTYm4oAH/+vk3BBMEKjnNsJziuXzxzSMtKJVt+ZJifSyDayIqFC
	Ebi8FLsTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itsBw-0004Os-Iv; Tue, 21 Jan 2020 11:59:32 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itsBl-0004OQ-MB
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 11:59:27 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MWAjC-1j8dvL2jik-00XgHZ; Tue, 21
 Jan 2020 12:59:17 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Christoph Krapp'" <achterin@googlemail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <CAEQ_PowiTv6nom=ZMSGhDSYwejx=TgJPEVBa5jrOXtrtxi4YaA@mail.gmail.com>
In-Reply-To: <CAEQ_PowiTv6nom=ZMSGhDSYwejx=TgJPEVBa5jrOXtrtxi4YaA@mail.gmail.com>
Date: Tue, 21 Jan 2020 12:59:17 +0100
Message-ID: <009a01d5d052$353b92d0$9fb2b870$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFiJ+eL2zfTRDPVJOupqCsKyTfZV6jcVGzA
X-Provags-ID: V03:K1:4+DObyvTSXPzI/o/Eh/PQJIn0Y3GvwGz1XJtx+c5D4JxZGec+a4
 kKNbKwVakXbo7VKYyJUGYwj9/HiNcgXoE5dBHGTkuDu8qiWZm5nKA/XnIrmQEVYbnyozHhf
 sMtpP6EkNEvlcUeGxPyS2Qm2N8uigNIOT0oCqlt+ESiZcPLRkdgG3CzbvbzW+j+Z7fwZYSp
 pfG4lLttmXiiuIWcX+7jg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zlt2rkY7as4=:l/sGgaWffCAW8Er+VpQ+e9
 OwXj/Pgi0pvXnqjQJmK2FQ24ROrTonpvHOmASz2hY2Po16q73lGgdlXkCK2OyTMZnkdHB4WOC
 C8yKRLmQwxkV7C+vu0XqCDLiqeEMNRKMDrG62hDGZPiU5buMziXs4qKW1tBgUdsjZi7BJ+OA5
 ZCASvId+IP03MH30FndYqF6ivsKgEwJiIYEwz+rUAItwR+fQaAvuGY8X3ofuK8ECfZDWSAxXo
 o+DlrCelYSVUrtXEV2SPGsHJIXZ4aP99L3DJxZOArKErWk03Pjxd+ONjcKEyYSvR2yE5ZogtV
 rsQ68Y4d320VRY0cgiiU3U/jIZ8ca0dX6LKyjSsZRKZLAsmUayhIdcQPMbgLmLCWlVm6k7kiZ
 uQUbehAJL5P196n0PFPh11oAFEs0lX2+kG4GmtJgm6iAnR6vttLZcKZczFbi6c6VA8RpTnoMX
 F7+f0D33ksp4pu0CuUWANTzQmDZ8gnNAoV7PLuOWnYMGXYAIlgFm0B7aqXSs8fOIoS6goOZ/o
 v2oGYKTDuxQpfdC1dwfQtAe3pR/fdMxndgN3oOIFg2dysXstB2UicouebWnT37CUD6M/ESsjw
 eyuRB2QQdK7nce+wE+aOFnsjmr1hGoDnkk87/U5yGAToD7y6wRbNYP80p2JUIIqfmtlBdt2Rj
 Z87ifnvQipqZheHG66JMo7xlF7cKz4vGAq5QpVLBjToqgnzMvvrmfvMgKi66PUjUnTbuaMZcy
 sBYV8ZqFTSE6mSxMEcZ4Ow54JqfvZh00CWUR5+cPuqikfDsZ0VTSjqsQNtmKS1X0xIt6Z6u3P
 d15L4AkyZOTaTjg2QMv7KSryNEfV7CJlruYkM3kTWNmEEdb6x9F/epmngrnyjp6mul8xmXNkV
 GhKWvOwbMyaEX35oq6vezAHTegYoJn0/SxYGFwOrQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_035922_024283_ADDFA67F 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] [19.07] ramips: add factory image for
 Netgear R6350
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
Content-Type: multipart/mixed; boundary="===============0272155178197480508=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0272155178197480508==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=qJMT/nW/UW+tcO=-="

This is a multipart message in MIME format.

--=-=qJMT/nW/UW+tcO=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I will leave that decision to David, who merged it in the first place.

Best

Adrian

> -----Original Message-----
> From: Christoph Krapp [mailto:achterin@googlemail.com]
> Sent: Dienstag, 21. Januar 2020 12:01
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: add factory image for Ne=
tgear
> R6350
>=20
> As support for the mt7615e wifi module was backported to 19.07 it
> would be nice to have factory image generation in 19.07 as well.
> Can someone please apply the following patch to openwrt-19.07:
> https://github.com/openwrt/openwrt/commit/3c8df280a96bbd81357d6eb52845
> e6b5fa7162fe
>=20
> Thanks in advance
> Christoph

--=-=qJMT/nW/UW+tcO=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4m548ACgkQoNyKO7qx
AnCdBQ/8CqnycgQiTQaktNlve23JaQlMlno3Auu+wMlemyBwOuocl6Eri9aLl4Vm
mbkQpSo7VLH9nMpMCvDxDzPmehDz91ptYkq60M6Wy2VLzrIA8Cm5GZuDVv4tKeuU
yUqaWPBzLgscGWCDSuiyP1sKN6yqOFV5aWNFGQJ377MZ8tgT8OPE+EnIWMbEopja
a33vlPx9bcquimckD4PtfkKnbukzgjIJFbjLoUjkkO/PS+4zHu8U8urJJKJndIwm
A67r+VIbX4FRWIoQrcK8JfFF2lc6A+nc6ZxJ2labge7CEA3FpsyDIL8kvaWXIqvD
ajjqNkykKwZOiwhg77opGOo0DmAQOotTBlrqj1utxvr3DTyRI3audtbq8BJxJnOE
PJ+zgIPU2t94y1+AnpO0Ku0upFCHJ2jArf8Ce/h/DWzkwMtytmnEkE16aXYVzqCY
z9/trwkiX6KjBTtyW4rSsuN8PQQAlLDkSHfFKVyPOF8XtSf51xh95wncQyhE2S7o
sHr1AYEADD7LRrwWdW/KJLubt8yOmfE0dZHKFgeGOpDV7CEoO8V9bUqGMth3SDOg
gpfYFI5F6RorQovVevvAATo/kFE5ac5yi1DHUkCHEXlaZ/akv012gplnvf1gtk/o
TiBYMKISli47VQoaYVP8G11PCOS8lfCZ6v5HGPYCO7e3S10U4zA=
=igWG
-----END PGP SIGNATURE-----


--=-=qJMT/nW/UW+tcO=-=--



--===============0272155178197480508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0272155178197480508==--


