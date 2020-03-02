Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D6517629C
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 19:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pzo3X83sy4/V6JGlX/VKyxkjccHSMHUpUOM9cNTf6K8=; b=pq5lh6ox4iQ5O9
	a7wcXFYnnq5RD09MrMTlavJgDBsuzJVevNvmZSpjHGlUPw7fXWh9f3XjhTM+ErlLzwNx7cjkXIYy7
	fxA0E0xwMpGssvtGWfmskgqdCKBo9MkUq7K1Ob6TH1iDyFLoovodRwDPYLvSGPpjFtdidD+iwcE8Y
	733dgNF2ZOcY2rDyDwCkmtY8YP/zyQBPfijleC+YRK9lJqIuF+T9ZeaFs3a5QQxdmy/EB5Xps6aWG
	V1hXpF9POeKvjKsyUhRxMThVsOyPu6HENNBifs3f1f+DG1+E+HgjPEFc7JCEChqPStKfZivOKurIJ
	OcZg2yZRveDcBwoyP7oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pmB-0004Q7-Te; Mon, 02 Mar 2020 18:26:47 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pkG-0001s4-Ka
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 18:24:51 +0000
Received: from acer ([88.117.238.145]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MuDPf-1jMueQ2mL7-00uWlu; Mon, 02
 Mar 2020 19:24:39 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tim Harvey'" <tharvey@gateworks.com>,
 =?iso-8859-2?Q?'Petr_=A9tetiar'?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
References: <1583168546-1821-1-git-send-email-tharvey@gateworks.com>
In-Reply-To: <1583168546-1821-1-git-send-email-tharvey@gateworks.com>
Date: Mon, 2 Mar 2020 19:24:39 +0100
Message-ID: <005601d5f0bf$d6b5b4f0$84211ed0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHptN+1uu8/ODHZ+pyT3pQAEZCUM6gOFVgw
Content-Language: de
X-Provags-ID: V03:K1:+h0RWDhr1gkDQzHQcQUgVLnldV19+rGLC3YwCxYyQ/zgk1hf27X
 EZbOxRPYLZ0D7+0ghBYPB/zLy1qHnFmJPR0IjLpB2snxIhO6OXCIPCWs2l5toyTDTjijZGp
 JqJioBFZ0mcbR3cJ76jH7466x+bjzAsfFt3lz1gg9So/BtsVxfMcYgxy9LPGkBXeEeImxLN
 Qqx2uLPisJ03/Srpf0uwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aDTwUMLa20k=:CU3IdcALJvEeC5XtONmOjA
 aeNUzqXmb+lwBDaerbF9op882HwiAO2uucuc0JmVRDKYcZt7rU3d0LCD+UHy68wGLban+J7+B
 yDBfAxRekLUITRjO1u0pjcK8H1YKdUoEKuc5dGwBDT/spf4JRC9iOFDDF8GBidS3MbhEv9/vq
 LYIpasx9C4qj4GSAQdHNk904KO7GT/sP+Evk1qaDQYDoI1UbHQwXpexJd6FvGu6johL0zOa10
 t/FNkvjswvI6xRqD4QtH+Q5MZiT8JouYM/vHkBi49Mu4tsxym3pgd4GR/MgLwBinjN9HKwLsr
 05qCjp/ZU76+ExCAJbBHtv2L5dYf8HbvHiYXFF9P/pANnyjV94D0J2KHiKuS5zsma/KZYykk1
 McKczz3+OrKz9/7VBy6X/YHf3a8wzfQF8atO/NNrNopZ/wWpF8wsSRLy6Jmv9vZROZtp7nU6I
 0upt2HaHjpUMKe+p34p2rD8YimjaI0LElCNpD5HftPVnWdKIk6BKtiaY995oNqyFIf2B3IT3n
 zua1u5BiKWZopaWPX5rI2T8TBo6cXQMbC2rYU7mJFcOdQcLh4mfiU3qfiY9wSPEuiNZCARk8z
 s85UHWiaJrXq+fiKyhQL3D5Lp8CKVFkk74M22glWIfsvtPj+vS1lkksuTbPj1NoOdz7Cgu9US
 RSwr1DcLjRJrQ7EDIbOaRPWbikd0eiERnzb37t2h7aAkVv+YXnT0JLu1qBwvEGTGmyn1PVguV
 UxAxPkeumAHZqT+A1M6prnpitzAY23mU7g0MMcJlEO3hm0Cnqc7/aEIbFl+P94zjSwoNi+fCT
 73XbBxVzh2ybky1sc0vb/StsULcd8ALZwnqB6CkQMpc16PvrC+91npaFviAIgEnmY6tU2jt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_102449_002802_B672BF31 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: remove unnecessary wildcard from
 board name mathching
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Tim Harvey
> Sent: Montag, 2. M=E4rz 2020 18:02
> To: Petr =A9tetiar <ynezz@true.cz>; Adrian Schmutzler
> <mail@adrianschmutzler.de>; openwrt-devel@lists.openwrt.org
> Cc: Tim Harvey <tharvey@gateworks.com>
> Subject: [OpenWrt-Devel] [PATCH] imx6: remove unnecessary wildcard from
> board name mathching
> =

> The wildcard used in the network config matching is not necessary given
the
> board names returned by imx6_board_detect() in lib/imx6.sh.

Thanks. You have a typo in the title: mathching->matching

My "review" on this was just a drive-by comment, I cannot review much else
of your initial patch, but IIRC ynezz already had a look as well...

Best

Adrian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
