Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2BF1846AC
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 13:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=meP0yBW8Olrv++K5f4xEWLaBR96tptef3x1nLaOjUAA=; b=k5WGDXQPlwfz8v
	W7BvKj6ynBwv88IUqS4cUAjdBtrBs23R7AAF2rtLIcaij7ucLO+BVqxy5mHYUOqzV40wBak8Oy+Rw
	3Nu4UHt8yB94abM4s0QM1B5PdtMZlryoyNPSmnw7zz08jL4Q4qphMEBiSLQf9lOyPRrHjzR/UqamR
	okH8CIhT1csSbGoppGUm/OXMf7v8mXBEBcboST1KWREE+xFwyKRlhzZMQ+8a8PWvoZZ/1YjH2jMcc
	vXhaNsJFC+IPSjJ0jfSO9KYuZNIx3vUYLrrdE/1/PhsNki1Q8CJFom8ff723jgW/hz6uMCA1Mqc/i
	WP23XpIboAb2bwlSfCUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjGL-000880-Gt; Fri, 13 Mar 2020 12:18:01 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjGE-00087U-7C
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 12:17:56 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mzhzd-1jYVCp1Wcb-00vf0I; Fri, 13
 Mar 2020 13:17:42 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?iso-8859-2?Q?'Petr_=A9tetiar'?= <ynezz@true.cz>
References: <20200313032313.383555-1-luaraneda@gmail.com>
 <20200313032313.383555-2-luaraneda@gmail.com>
 <006501d5f92f$3a268600$ae739200$@adrianschmutzler.de>
 <20200313121336.GA56199@meh.true.cz>
In-Reply-To: <20200313121336.GA56199@meh.true.cz>
Date: Fri, 13 Mar 2020 13:17:42 +0100
Message-ID: <006701d5f931$6532a7f0$2f97f7d0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQJZT1RipxLpYczUcqYHkhfaJgx+ZQHtN3mJARX3smIBlIP/EKcbBfew
X-Provags-ID: V03:K1:Nkd5HJBpyG4M5Aly9AAZ7QbNlzzGm3jC5CKcqbPPeJIIPV9Fiwc
 Jp4vbjfmqYMEhnmXcTgZ+5+zOXZSsaead2bUbu3lujmSmv94YFwfuKCmIhUaWPszBmg/glX
 cSAzptTuPH4vPIzP66VHD5pVZdNSDeQcuwNEmgbohit5KJMsGeLL+SmTiQtbHcH7SOpJht2
 LfRm2OR3uS6c0WPaLemeg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/fEXqeZiFLc=:7KcCjhww7xJW9maJTT+iin
 O+wEMoPGmensdkebVSyOD+X7tsynG46Y6cdVxSX9l9kWbvfTv1kBa/Lrzmn7VwkolRnVJ/EG9
 jDoTfnqdCsDOHzDZ8s5QwXwBmz4PWcoDSTv/kITwtwirrlFCnvAngDaWFcnQF5RYCYre/Z7DW
 S+RFyBudE+OnONacgYf1SUIMuiiUK8OoFxfEew2gS7gbwb2tFEwq1q1R1GEQ8y395Z8n/YU8b
 W6aEUYL+Rw1yiu60xsErN8Iy2cY779p7ScE8AkL1nVAqIDlwhhtHEhuybC4ItVefctvSS2jSO
 udRGAFQUFVdTrJLI7k3lvMFQAhIhtdi+GyQUlUadZR9z29hWCIVPmdHuF1PcIU8LkZcNdi8G1
 XXAGhmi1KCiFVzgn8z8zZNfTceXZ46k1whgVrUpWm34oYI1Lu9BQNkQZhoevEYrYR7t1mJDHK
 DBWlbkG+o9cPjChUvDNPWNzglVQcioxvCSuPnHB7v7ltXvWqwxNF79xDrB75PLkzYbB0FFejJ
 rUWZouGO13ovvm5YhLw6tPCykDZuoQvrsIhwEawL2YHZMTdpe37IYdiGfvLmKQFbpohCJ1Lzh
 TUanpcoZpE2fcXQNSFime0uZUSWj9qD0RkHl/iZWl/R+ykXFyvtKIJUlhPflpWprcPlg8rbd8
 raDXSZQgqSiuJhByksPhnzF8DGxJaS3lxBJ4gQC8uEVN8BP7H9tJ1Mp/Ri8pOyNs31rMbKeI3
 e4Duj6+csAHpAQl1YDm9s1u4uoXRCoFjszmdGs3zwvhQpFdrkJEq4XGoQ7yt8FbYuSrIZipoe
 qaMH8tQB582IhO1uFgKpZBs6kcVIZylcUZt4P11HhEnGTVmC1OaWyyy2wA4bJGtjQhGT2jV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_051754_553682_6715D47C 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] zynq: copy config from kernel 4.19
 to 5.4
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
Cc: openwrt-devel@lists.openwrt.org, 'Luis Araneda' <luaraneda@gmail.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Petr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Petr =A9tetiar
> Sent: Freitag, 13. M=E4rz 2020 13:14
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; 'Luis Araneda' <luaraneda@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH 1/3] zynq: copy config from kernel 4.=
19 to
> 5.4
> =

> Adrian Schmutzler <mail@adrianschmutzler.de> [2020-03-13 13:02:10]:
> =

> BTW, I've already accepted the series and I'm build testing/fixing it
> already[1].
> =

> > I do not see a change to kernel 4.19 config in this patch and why would=
 you
> > refresh the old config before copying to the new kernel?
> =

> Its common step to make review easier, allowing for clear config changes =
diff
> for 4.19->5.4 in `zynq: refresh kernel 5.4 config`.

I'm aware of the two-step procedure (1. copy without changes, 2. refresh), I
just read the message in a way that the config was refreshed _before_ copyi=
ng
it?
May it's a language issue, though ...

Best

Adrian

> =

> 1. https://gitlab.com/ynezz/openwrt/-/jobs/470651723
> =

> -- ynezz
> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
