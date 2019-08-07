Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA5A85344
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 20:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1hyCLGHDxnNO/LLhD+5nM7NK6gg9QpamqopsWpsK+Yk=; b=DSyoT2W8IqXtZ4N6H7MSlDi71
	Z9QNZ24VYY232KlUP478ZWzZzDuk6Q2806zNTDbTa4jMI4T2B5Jd5H19LiX6JUV9jEf87ooO0X6Rr
	F8W+dI0pzWKlhRN3wMeTWKq+wLVCnKNYXPbnE780a2kIx2Xx1anOTPCt4zyAIHJrcHP0lyuuMHDgH
	pt5ek9rmYnfTeZ7RfvyjkzZ5uHMsL+cwnNgL4TLv+/mfs5MI4i6rWtpZhIZAnm8BRSmwWJ7NYOS6A
	YTfA6B3CcnicS/CZjPBHbh/FF011lDJllUGl7OB/yFii8eh0q8F3tLTvKBmoKWM0wbUg+udG/I2ty
	xmUZUAG4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvR3O-0002uD-9w; Wed, 07 Aug 2019 18:52:54 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvR3D-0002tw-Tk
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 18:52:45 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N7QM9-1iP4Cq0WpZ-017lhE; Wed, 07
 Aug 2019 20:52:41 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
 <CANoib0GUUxSHCp5cRkjyiQykuRookSNdiVyJr4Bf0yE62fYSpw@mail.gmail.com>
In-Reply-To: <CANoib0GUUxSHCp5cRkjyiQykuRookSNdiVyJr4Bf0yE62fYSpw@mail.gmail.com>
Date: Wed, 7 Aug 2019 20:52:40 +0200
Message-ID: <02a201d54d51$4a49add0$dedd0970$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJfXR1+bkvErjfcpfU8tI79uGyNTQIaUNJQAh4I0tABy6WucKWrxyHg
Content-Language: de
X-Provags-ID: V03:K1:3iFlvb7D5R/kAKlpCDlUDaLZ2w1RD6YHs4BK7N0Qb1NU5sCBEGU
 06PdVBH1P5beGhCnAsgqLZOtCIMIhjh2IxwFx/ntLaXjatpXjomHlc2VKyNHqMxC3Jovbmz
 WjzFMNVSCI/yWr6Isapr8nqX/4URx0OaVDPUG3xYNqn+UsSMss7Vx/Y5apCyt31IXimy2MO
 /agGpvoaIwQBURKLcHlWQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UU+fAZBZcT4=:aB8njqc6zznjkbwgc357vA
 i9dXgGPB3nktwo0rp8x4MgVN5OhoZgdXUjxYJZZovzkF0YKSA5Gq/WyCuWnMdak2iAVp/p8GD
 1WQMWvXeuHtpoVV6GRoe4hcV+LRj40htTx/+X/h8eFIJC1iqpB1b4Zfzb2zaXKPmdNHJMtZ/I
 pqYJaGybUqeIvL/LQo5yPR1OOdJlKS81aQKQ0IQFZW+jC2YuP4T4eyAm6vz73HbAWV7T5mu47
 FRDhaxKYqQBN0e7CkynFFBOLETViPuNWidkPLJboCl/0mk6mYp0B9VEGIE421oUoFuYAxcOLL
 ZVYZ6m6OkLh6ZGnaN2sB9br8+k32UWph7wP4usHMxTvGZGHcHxRQII4JomPng0I0tqCHySwmr
 +W0EZfXYuPWfT43IU6ATNcwIf9DYtk1v8h4W3l5/afnFkioIFx6fJk0Tkp3Dncm0fsVbIdRU2
 xlfkhRJ++l0ITJKEoWwmEYAg3YfyTHubz0NuJ9ESKwMNS57r/XiOvQm6nL2drHCUitDF4QJQL
 Vl7R/JwjaZYep57LR8+TRIkT2GlWG1XWe6GKKDZz85IK80zkL6NIQftoS7kf1HbmvV4j1fdFE
 KxDYfW9bsO0EBOaBKYGa1fDvZCVGFlGS0qWvMOTAzKeMKj7OHGCvAdJ6uAhzLVJCrQOvJj9yt
 F+cEWQ1wl5e66lUltatfaJchh4+zixUW2jtFwV/J1MlNMFZT9hj/uP+tT0ZQrbcUsPyzDi56C
 qnhnYdnNGvT45ymtgRgWC60bxZ3mp6AjJ4QUXDDxjJiYXJCQS17u8YQCiCI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_115244_258175_00CBA89B 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800
 (Ch)
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1687980530576945398=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1687980530576945398==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=exChDOJ1HA8+CL=-="

This is a multipart message in MIME format.

--=-=exChDOJ1HA8+CL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> Maybe DEVICE_VARIANT :=3D CH is a better choice, since it is the same dev=
ice.

Well, is it a variant? If yes, CH implies Switzerland to me, which most pro=
bably is wrong.
Despite, if you decide to use CH as variant, you would have to introduce hy=
phens to device definition name and compatible, i.e. "netgear,wndr3800-ch".

If the CH stands for China, as I've also read when googleing, I would prefe=
r having CN here. This will then very much depend upon whether the CH is us=
ed officially somewhere or whether it's just an invention of previous OpenW=
rt versions ... (Where in the latter case I'd actually change to CN as we d=
id for other devices ...).

Best

Adrian

--=-=exChDOJ1HA8+CL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1LHfgACgkQoNyKO7qx
AnBdsRAAiRgY9Oq3wfdhY1+ivUMM8xe0BDPHfcZ4YJj+3oGEmpUpMW6Fyix1GFE1
d01q7fXOfhQ0SaYjmImKSe429q2TExmx0BaYwEliDawA0BUqQV1gtZ2snq25VGzd
zFmgzYBXfUu83wJdPlr/0wQ1hPYMqF/gW6z2xZYqk5QFlopzFiv7cB0Tn0ZA3vWU
cm//hINA6Ztk+9BlG2nwrDZU2PD/RX7FDiiYyxr+tQTl4HDxoyGJ79NB85wWiWu9
XxCy0tTBB5gQwBn4uBKoMqCks94xvVuKwsD0/fAugM5/6O/O0NA/OWviRfFIQ52V
c/KkP8Z9ThAsnhqoNulMaqZKiz9oSFDPo1/HrSmQbLm7drfZPlyiLF/qHWeqrxqJ
t9vYE1Ob8bhA1KHPnEdULRtHvYsBmqf8Ho+jcsEwp3I4qPycaM2WGp2UZNyXkLlK
foeto9J7vC+it9S5gk3a3JLxL1MqAABxQbxwV/ro6rbNQX9Jz7gzOLvNxtKeHy/5
ME9e9ggpjFTEcFcoqwvSB009QOIxScjfgJo41i+5WJdsy2CWiM4GCvhq7pUx9LbR
+QJiaV8EzyY/FLLEkN/epzo9yAyh8H54QHber11SUeG/avEWu/+mvguPET40qrjj
60m9JGdOpd0nIYACKwTNOBrUS3P6+J3zKPIUIEDWQUKrcIdfmP0=
=fQAX
-----END PGP SIGNATURE-----


--=-=exChDOJ1HA8+CL=-=--



--===============1687980530576945398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1687980530576945398==--


