Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8191F184C1F
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 17:13:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sBBGhqdcD+ju0YfiD8nOCUe/K8DN4cx/yNMcAtbNhs=; b=GyElRlkdVOZVHl
	8tJmI/ZpV15hx7U+4LwDsrGfsIAoJhIw1qxiTE5EvZQ1SBc5wtm1W249zv0G2QdAH1q7wggWhMnT2
	ZEnqubCGV4mnqL/TikbPeFlLol8i401EYaRAboCDQ6vdS7eAWuWy9+Bn/GjfAQrTkwWr0oLaj7YQe
	/a9UlkIWQUzdyKKOi4GaOnIVDbJsBvqeFKpeFSC1jxUyMU+YbKuAm/UIOy2pFTAMDLUQLgKUdai/A
	V5jO12Wp4xwGUhcFH1rpcNp9QiWhhQ7RXj2OyDaAijoH9KOBb073Gwinjjv3Z5WjnURrldP8M8usy
	15k89f8KUACOd4jCQlrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmwN-0005Pv-Vo; Fri, 13 Mar 2020 16:13:40 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmwB-0005PT-5i
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 16:13:29 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MUGqT-1ilbIl2ydH-00RKjk; Fri, 13
 Mar 2020 17:13:24 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'mans0n'" <mans0n@gorani.run>,
	<openwrt-devel@lists.openwrt.org>
References: <012301d5f89d$61b678c0$25236a40$@adrianschmutzler.de>
 <1bbad1d0-d55e-268a-38dd-bc9d32939848@gorani.run>
In-Reply-To: <1bbad1d0-d55e-268a-38dd-bc9d32939848@gorani.run>
Date: Fri, 13 Mar 2020 17:13:24 +0100
Message-ID: <00e401d5f952$52af6ac0$f80e4040$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQGam8PIjP1zaMlWn1IG7e8LBJpbYgMajH1ZqKSYPKA=
X-Provags-ID: V03:K1:haT+3iQvvcMw65tfxrOAkxp+7gL1UB9ohJjj0i2/jtzKFs0YOS+
 WL5hbhvd3oYPwcqBn7T7ZzzNyebB3tR7a2JebvgHWj7NaBthxyIiNS7ZrqmJnQidPo+J0hF
 u4lHnQ+v4w5mMHlk+1APxSRlbMGTZEahirJUD5sT07zT5zPsQmELgv4P026wd4gwCT4JUQ8
 PHNYBYIWkkmDmidlW8q7A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lTK83DEwsec=:ycVnZJw6ECzY3eOeERMVcm
 8enHBUkDjKasp+/cghYnllPrHXgXbEzAgFvCddvz54vylpm3dYiRI4ZQh7hSAZz7nOCjmnrSn
 5AH7jiJuQBZA6URY2SUtUj3/dA1K3t2IZiOyYiLN1WJHa4mb/Hmsj5dEqmw7di6dw+a+M7A4x
 m1jEYughGtDooHA0T09lvEhRrt9MlcN4l3zCQ1Qd5gksnkamRbNhsRIjCXHN1+KNEx6mmKhMd
 hb4NiOl+UcHgVMLPvedV+bgZlOKZC4BCOKV+vk4yAIpBWhYYOX11ausMBl1kroVWdAcWvmi1S
 kRJtjdNlFxnZNK0Q883c2EJC9hW+37PmQndPdeqyAlXenx02lN6p1J1Va0nqxhnbK/GASS4is
 wg/3epF+82RMGuiOx/yHlQhJtix7XZIbVq1Rd0ZmgMSaq1ojBkp5ebvm5wcmVaGXqMbrrtvCM
 C00ij+SeDrmJs5p82f4VKBE+zmBJCrIEWC14dFo8eJt4j940yS1VyPl3BF/qbhF5sLCDA56bK
 Hm7hyTnA6/HCKl13bS930HILSgPXowfgukeTUZgTqz7sTKmq+1YQPuOhkrIy+0l6oT6397BqC
 Ej6euzRoMV3ZC2zOSlKu9kUt+SpuA28zqjquEH0Uv77PKYescZ4kCE98LXfSnlZBqBMl2C0d9
 iPxwIdv5GyNM0sROeM5VrqntZ+fb55Spa79h/tv4Q0hbgdsxxHi5AeXJJ7HXGoxKCMolyk8p7
 GpT3sIeFjhQtAjxdBWDNAV2W01xKXBAi/6UdTqzq+SKdE/AUOSbs4R1lA9DDCamuD1sLoSl/B
 UOamuurRuHVjn4ZTOo7vX+ULEqb+hbVQQilmPOwZue+hHd/J9g6yrel3q28OFlzhWsC8QcE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_091327_507370_6FFD522C 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] cyclic dependency for /lib/functions.sh and
 /lib/functions/system.sh in special case
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of mans0n
> Sent: Freitag, 13. M=E4rz 2020 14:35
> To: Adrian Schmutzler <mail@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] cyclic dependency for /lib/functions.sh and
> /lib/functions/system.sh in special case
> =

> Hi Adrian,
> =

> On 2020-03-13 03:38, mail at adrianschmutzler.de (Adrian Schmutzler) wrot=
e:
>  > Hi,
>  >
>  > I just wanted to source /lib/functions.sh in /lib/functions/system.sh
>  > (base-files package), as several functions in the latter require the
> former and
>  > it's annoying (and untidy) to have to include both files in several
> places.
>  >
>  > However, I realized that currently /lib/functions/system.sh is sourced=
 in
>  > /lib/functions.sh, function default_postinst():
>  >
>  >
> https://github.com/openwrt/openwrt/blob/8df14c229c02a3b9329afc6e3ebf4f8a
> ec5b59ed
>  > /package/base-files/files/lib/functions.sh#L257
>  >
>  > So, currently effectively both files depend on each other in at least
> one case.
>  >
>  > However, in default_postinst(), it looks to me like no function from
> system.sh
>  > is actually used directly, but it's merely put there as an "external
> include"
>  > for the /etc/uci-defaults/* files processed there.
>  >
>  > I'd like to resolve this, both as I think the sourcing of
> /lib/functions.sh in
>  > /lib/functions/system.sh is helpful and tidy and because I think the
> cross
>  > dependency is quite undesirable.
>  >
>  > I see two solutions to that problem:
>  >
>  > 1. Remove the sourcing of /lib/functions/system.sh in
> default_postinst(). That
>  > would be the tidiest way IMO, as dependencies used in a uci-default
> script
>  > should just be put there. But it might break things if people relied
> on it. It
>  > would be relatively easy to fix uci-default scripts in openwrt repos, =
but
>  > downstream might complain. Still, I'd prefer this solution.
> =

> I like your first solution. It seems there's only one uci-defaults file
> in OpenWrt
> repo which really uses /lib/functions/system.sh. I guess downstream
> projects can
> handle it relatively easily.
> =

> And if we are going to break things, I'd also like to create something li=
ke
> /lib/functions/mtd.sh and move all mtd functions to there (and rename
> system.sh
> to macaddr.sh if possible). I don't feel there's no good reason to keep
> find_mtd_part()
> in functions.sh and find_mtd_chardev() in system.sh.
> Then we might even don't need to source /lib/functions.sh in
> /lib/functions/system.sh
> at the first place. (I think /lib/functions.sh is too big to be sourced
> everywhere...)
> But that would really break things heavily, so it's just my thought.

Thanks for your response.

I've actually tried the mtd.sh solution, but it's too painful.

So, I've come up with a smaller solution, still based on option 1 ...

Best

Adrian

> =

> Thanks.
> =

>  >
>  > 2. A second option would be to keep the include, but just move the
> function
>  > default_postinst() out of /lib/functions.sh (from my perspective, it
> doesn't
>  > really match there anyway) into a different library file (which?).
> This would
>  > still resolve my "dependency problem".
>  >
>  > Any opinions?
>  >
>  > Best
>  >
>  > Adrian
>  >
>  >
> =

> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
