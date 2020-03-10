Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38CE17F654
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 12:32:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aznW9SG51fYgKLJeeXtHpB8v6cnZDHiaOEzM551p8Mc=; b=KUFJWKLg7Ti/Z6
	UDVsCxhwUE43/ErjZJqA08ufY31vOk4VL2tDurJG+p1bs+AsljlCUcc16ew/F3qU5mwgAsgVOLERz
	quDblOe7QRepCwHsQLRSi+GFfIX+knosCqJD32A5WyPOaKK+VWcw3jBuRM3Seueq3Q0J8czD+JAnI
	HEZ7GD265CLugPo37wwpqnQgNewzEIc2ksbVYIH3bXvmWsIjoc5cua5EzAnl0XJzGRWgl6qwFLktl
	XzPL9Kz10UxTBt+RKT+wVSJv4UVWupTbML3Wpf9uM4fCoxyi5rw+ifb5U77EVivrWw9PnvGF6ET37
	HRWD2UOSKd9zlU+R5JBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBd80-0004JU-9e; Tue, 10 Mar 2020 11:32:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBd7u-0004JL-9a
 for openwrt-devel@bombadil.infradead.org; Tue, 10 Mar 2020 11:32:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=DJ9okYL1zf/ZaqfU39eKFDMXq5FAMzO1lFAFKsZRc74=; b=pYd64bdt2IV8RNN13G0ANwLgWv
 OZWvhogB34a5T2n3eLggry8T9OR3ljFYm+opU+T27362BJonPoAHuq4s4JI2+aaQcq1t01IQvd5vd
 KMURiMcAvi9NmOWZ5nidrLwZ/lvRAtVBH0oIIR10DabARp/bnvlBdxB4xHswJNEAauDawKYbh0IEE
 VRpSj9nnUK0KXpGashvGcaWkw+H9/UPwZOLn0x10+Muh0VdY12dQUI3YGCD0dKg7cVxFYUPI2G552
 Gkl8EsUjUbwCVfKGf01bMH7ZWrtrSG/mwOny3G+qSVtkAcgIqzpUiW422mtnRw0Mb5Fn2cPRDpShf
 x1ACSR7A==;
Received: from mout.kundenserver.de ([217.72.192.74])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBd7p-000388-IG
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 11:32:44 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MlNgx-1jcx8A3Jxl-00lnhO; Tue, 10
 Mar 2020 12:32:27 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Russell Senior'" <russell@personaltelco.net>
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <877e05sk1d.fsf@husum.klickitat.com> <87a751r14c.fsf_-_@husum.klickitat.com>
 <043c01d5f614$3bdce9d0$b396bd70$@adrianschmutzler.de>
 <87wo7stqj8.fsf@husum.klickitat.com>
In-Reply-To: <87wo7stqj8.fsf@husum.klickitat.com>
Date: Tue, 10 Mar 2020 12:32:26 +0100
Message-ID: <00a201d5f6cf$93ed4000$bbc7c000$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQKyOHC2ZsrvrsN7wRnTorTWuhqfswJzHtSYAgLlevYCa+bLqAKbp2Xqpj1Be5A=
X-Provags-ID: V03:K1:cu18nsQCM5sfA4ZIyzZhR+xMbNUgBpf8vgpnH6dcVrHGXpPr4sY
 UEzJotgcmME0DNWOtee+D8YxRveCklYIlRxnZSQPDiD69qOl3I0FKCTrE+uhru6FXFON17i
 i4Er29E8C89IjkP3jU6oJeWxJV3AQTcW7OOMXquTNTPCs2YkuGHUZwldlPy3bFVH+RpZYdF
 H2J57TeERSgK8gYJ3dEEg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DEj5D2hNjLM=:L7o0Te8KKyA8HaZYZ+OF07
 FuYSHaasqlHZsLFpqLfBd8RkwjYT12vkl7ppzHC0fQ39wbFzdotx96EbBTEFU8ZtO7Cy4Nv0q
 vllbb2RnRMuCAtmlBJyTa4qZamZAKhlS5fvd5OJB2HHM6C6I4U93brCS9s8MagCufa3Tbx7Mi
 CSbpU0xGi2GH4iC1di7B0wc6Qbk/r4fs8By1c7uCrmwMXTC9ppVY6o1E+uCeGmEAGOym4Ps5H
 88UR3y3Ou1BjUXe+QxM0/k1StkxyA2WRFgrD6XMNIP3x/6cgyiSOdR4Nuq2W7Cb3RKMYCBmUa
 8YO4Qi4fk7Jtl20WPEd5sSe32qeDEXOHdRogLWnhSIrX4t0ZX+vAVAaCkJsfiEzsYf6jw6LQI
 ZilyakewX37flw8ifaDEdxgytPuWvUqQJH/K8JK6sAqDullsBw9M2DJyoeexpBpYHKa63fNHN
 RhcryvWZnB6jU2uosiJAn0JKbrk+wwNXuyg2HFohj/9QwUdmO9nHTbr7JJn5HO/nan+E4kBLF
 emwb4baw3wy81Y36E2DYU1dZ9LHgTQdlBo/ORI4s2KWN7PJ6A77HYJ7kWkz40alJ5o8Jhs4nx
 UMVmbmaGxUXDfu4FP46gINJOGgzcYswEQe3IDrazVlxF6LF5eU1uhfWrjjfj2sOXxhwdYLkoq
 1q9Gg3rzzfXf1OvPdZ8uHkF9Lpsm/18axfsdzxmxUtD9q3YkBK+NGKagAhEUEdPvIocJ2MN+g
 ozwq0HLi36jdRC0eyGTyKAL0yRzM+LvnpBfFawy6JCAnPbF7dkXX85CaYUvc66Hp7kJiFEDAR
 od4i/ZtJipo1kYFNAToa7tOi6lkwWRY01zQidtJelA8acx3+0UqnklO2/f9yKKnMcjMXYYT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_113241_801376_9FC5F398 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH RFC v3] ath79: add support for the
 ar7240 version of the ubiquiti bullet
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Russell Senior
> Sent: Dienstag, 10. M=E4rz 2020 12:10
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH RFC v3] ath79: add support for the ar=
7240
> version of the ubiquiti bullet
> =

> >>>>> "Adrian" =3D=3D Adrian Schmutzler <mail@adrianschmutzler.de> writes:
> =

> Adrian> Ah, and please use git format-patch, your v2/v3 didn't even make
> Adrian> it into patchwork.
> =

> Fwiw. I did use git format-patch. I have no idea how patchwork functions =
to
> extract and link patches. Perhaps you can provide guidance on that?

Err, I meant git send-email to send patches to the list.

> =

> =

> --
> Russell Senior, President
> russell@personaltelco.net
> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
