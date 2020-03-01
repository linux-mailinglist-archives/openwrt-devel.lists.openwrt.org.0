Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E804D174CDA
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 12:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxEesbkq5d0MDoGWJvQzKk/4sKlbuFcJ5PbdXB8F5Wc=; b=sp0brWB5e0Tcrk
	602QQcMCFZi8eOd4KQLKbeL2q6qvOuBYM0h/P9mS4RGgAKhYbfkaFFHVaWS33e7mfIXuy148kcsqb
	INQs6O8UcV2dlhP3xM7pLr3rEPa2JtzBY3BWod7+icbCOWLultX7uvU8pnT887jpNnyNf7/qyM+sY
	mEOAmPcbCSLhBZyxHyGd7Im0N7A7RHgw+ybRH1q4QF9Pg29+1nyWEw+NbVEEdU9HsPsVFtUEoxJaF
	cnOzztEhU78ovOZ0BBXtNkZsr9tqwsGm7vZKkdgCcGDeKnKzFsANjeokKyhopQi3ppteRYSx7gORA
	uLvjH2LH05RH997GTMEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8MNK-0001Kd-8U; Sun, 01 Mar 2020 11:03:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8MNE-0001KF-MW
 for openwrt-devel@bombadil.infradead.org; Sun, 01 Mar 2020 11:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=ngnyKGpQrHhc0PfI9iytKiF3h4kuV2sNh8Yaet8P3eY=; b=x99h1xUjZXSaVWlIxcJWSWZl/R
 gQ4OhC55bHkzVmtsZVoedIjfd+9fjcuiw6LGwSG/RQ/uFU4sTSgAMR0SBZAbe8mFS847HWJHBob6+
 sLpGRFD0i2zbiBibnPnNA2or0D//GXEXvxDkGiqvtLyhwaYywNzpHDphTOkSyOWpWgLfpz1Kux6zS
 RY/L7YQDpsp14p1DNDV/DsCbGQUDosDyKXq6Xat/eKruNqvuNnBIqsyDwwm9cwB5EhVJXtipMEnXR
 HU/D/FfdFK38wkR9Vo8cR6TVnlW62WKbX0PfKJ7Di/+2+Z6bFuw6t+B/+l/rF8UlMlHFS/ZuTVT4G
 EgzB792Q==;
Received: from mout.kundenserver.de ([212.227.126.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8MNB-0004Zb-FO
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 11:03:02 +0000
Received: from acer ([88.117.238.145]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MnWx3-1jr4n60yJR-00jWJ5; Sun, 01
 Mar 2020 12:02:49 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tim Harvey'" <tharvey@gateworks.com>, <openwrt-devel@lists.openwrt.org>
References: <1582918410-12875-1-git-send-email-tharvey@gateworks.com>
In-Reply-To: <1582918410-12875-1-git-send-email-tharvey@gateworks.com>
Date: Sun, 1 Mar 2020 12:02:48 +0100
Message-ID: <009701d5efb8$f257a9f0$d706fdd0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQFktX7WXGJU1WRWeMUvWD1rfG1QJKkWBnjg
Content-Language: de
X-Provags-ID: V03:K1:dm3Y6kRsIxkrXGgirQdXpfswYzdVtwnkpciqNSJeG3Pn7oTvKXe
 CrmaqimhlqpejgtyOnT0EgTu0TZcMpMabr5228ZaXWs+kC+oT6omsf6/ZofrMivsfqd7t18
 3JJZ4+ro+VMVIndzNO8hAmrBs+M9ih8b0bR9pthMXc/4Ptpr7/4ItLsavSH8tVSkZWC5EWb
 0wtxlTXjN/4PkkiNkDDZg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5pGf4CxFp7g=:Z998xLSIW/6C4twK0gfOVb
 R0esxQKLU9Ddv1UhfB1xdZdArO7SPtxgtwjajn1eypqpeD9ux63OLdO63biJ5gSCIPCwHzWs9
 kehmHHnBaYhtveXiq6qMvzhwbHdVLACgwYNEQ1c6BELGqWBdjlyTS2+vh4OF6p2+cmXgrS3Ud
 w7MsLKtFyp3jjUn1m89Gke0GG8pSCgHrMdr1iZY3/dj+EZyPutiLd5TJQuJbwY9SOhQwiKJQv
 VDLfdHK/bjulMSVLKnS4CdTnA7wE39eqxhAIvbWq1BxeLpisSb5K6384fg1myhRxBVBbvY8My
 DHKHOj8q9tCh8LYW396GLpXpfX7C3rmJdgD97PxQac0qmvwsZqd7m+0YBTfTv+9HXNQ+iw0tZ
 JMesWSNiQjB2AoIX44jMz8Mn7Zu4ntprmKryhce+pS5wUaIieKRWpxZc5uzj5NnpbVRKtBeQZ
 o19jdkktwGdBGa8ESoM+Ae/IFLcwYSzzvpzOS9CZmyApRPmZbFmyxYVIVpEpYJd4M+xbYz7Xs
 8UInm0Ids4rHBUeXWqDCi9D6Q7dZOE5eK26PLtv0qpyMmQMOUje5kAGHgzUOTDP6W0c+pvYPX
 +FPu4yv+64imEt9hPi3yCsr8QzmtxOgQfJNKQRY5gJkmzzTfSSs9X/p6tZPr2o+IIPOEKbFdN
 VtzlIKjElRk6dHwV7zd9pAHTHUbbrmp7stqaBhCn+cVcIWwzCeDdXmhAWlKhYkR7ub89DyuWb
 2UFr0/4MVBW4qlzwG2Ewzo/WFEwklXlLIJS8/IYtubrXVFcfM6mY27UOhBY55mXtCP+zBbNqc
 Eq60uF35T17wmAaq+MMFVkId9txRmZXhfV5JmQd1Qi1DWlv5iUuUUiSS6MExFz45/Aclasa
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: add support for Gateworks
 GW5907/GW5910/GW5912/GW5913
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> --- a/target/linux/imx6/base-files/etc/board.d/02_network
> +++ b/target/linux/imx6/base-files/etc/board.d/02_network
> @@ -13,7 +13,11 @@ case "$board" in
>  cubox-i |\
>  *gw51xx |\
>  *gw52xx |\
> -*gw5904)
> +*gw5904 |\
> +*gw5907 |\
> +*gw5910 |\
> +*gw5912 |\
> +*gw5913)

Is there any actual need for the wildcards here? Shouldn't just gw5912,
gw5913 etc. be enough?

Best

Adrian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
