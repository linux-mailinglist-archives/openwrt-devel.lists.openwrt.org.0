Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F5515759F
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 13:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J32iK9d1Hxq8+RUAL4cAIixj7Ke7M9fj6PC4kUZsTKQ=; b=t+g/qxZfaPoDz0
	gmu2+uAvtvlwM/b/0Ase1mDx5nD3DeEiD1LojTgF09j9gxSjuE7It70d+oH8dvc5zel1h/uFoasq/
	Aj7YBKMamBrzjzds6d832YQhns1MvGp2KehaBJ5ZSRb+yC8DABMGK+Z1wDRxxWPOT1bugkIU5DXCC
	0zLOafnWv9d8E4kOnLeOSLSriramKQT6ALaaRlw6O26IPw1TGxk2qWYYlVOmmwKapwngE/Ii06WUn
	LL2E/rIB+8qFAsNQsE/yNVc7/6dyo8v0VdDLR0kMVvdwMeSA6FDQV7iIn+doH+hND2hFViouMJbC5
	Xq5qsZP31VnqQjFKCHSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j18Oj-0004u6-90; Mon, 10 Feb 2020 12:42:45 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18Oc-0004tZ-N7
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 12:42:40 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MAfQe-1jC9wH1hto-00B4aj
 for
 <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb 2020 13:42:33 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20200209191104.6205-1-freifunk@adrianschmutzler.de>
 <DB7PR03MB4604363F6D0582F6C509ECD2F5190@DB7PR03MB4604.eurprd03.prod.outlook.com>
In-Reply-To: 
Date: Mon, 10 Feb 2020 13:42:37 +0100
Message-ID: <008f01d5e00f$937c3620$ba74a260$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQGouRrgUPj8TAJaMV0wqMGiCnShgwIFrzjoAQ0QBb6oVhaUkA==
Content-Language: de
X-Provags-ID: V03:K1:FewcQx2+YZD5wiYojyxgb+Dzfmr1wQi9TbXoapMfzsPAD7mXPt6
 8kbDyw+6A2haq/itxHdAYdTFBJ2rpnD0cUroDtWxoyHRUyCz3EWCG8z5XpCp24be9sSbQHF
 mg0XNgHGiWQcCmebDrDVG8xRhtzInxR6hBtam0gYYCjXk04FItjc9smUfie6MYohN+uJeYj
 NZe7CiiY2j+qFGq226ZLA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iqiW6xMw37M=:vbLFaQUf3tCuYVD76JM40K
 XhNGutlH0GgVyhLfFkJ03aJANIU8BzfS7gFKe5RXNrkcPelkaGLPmecfkNPE6KsKVM24fOSSU
 HxvR/XVbLshJMFjISXdKMyDYvhNJdkspAwtedsNHa8p5wV5jVjJEJu2oM4rV7jsbfleLcI/pY
 3HrqKnWl8O479AicW1/aO37m+KFYe6dMrLtNMQgYFIGGV5gisV7zuAUh7teRAgs1UBTNdoHJl
 vHlHXMMVWE6OOAs7ZTjZYL0mClgLqfYIawuwKUyKuZHdWNg6llIhTdTcSdSVbqYhM40n/5vrB
 pzEl6M0C0Ljv6KLlPy1wqW98x1LlCvvb3vYEMrUH/QjcNckWRoyE7Q9NBu1SNweeEHaJbX/Cx
 9wrrZCGIgQ968IU/qcKVD7l1eQVax2SPjxdw1soPGjgxk6iQkAzWByU0PYj5joI4EsWXkQrmo
 UtfnSjaIUBnorOv0D/caVuO/X8C+bJx2EG/oOdi9iMFEDDb1cOMmPUz3FulpPD27o0N9VzK1a
 RyNyJIZldMYmqcGC1Z0+WvYxy03kTYQVXkQKcRvCovtJsuetqadBm4v420hEgohl7EDbVnKYb
 6E2b7HEHP7ZXMoasc0fhwKwHohu6OU0/QpwgAFiyY55Fiq8UTVmU9T8ZwGx+yCMZc6AuoH4/y
 Rdem43zVaDYZk/WyKau9tSbvHl1oPljT6EDRD0neYGaVFQ9TQflM+aKf/HiuMknmAuUbaNwYx
 MZ9yE+dqMZS8IGIAQizgOjVQ6PWfm6ofGfVW3GFqSio8xbSHEpq8VuNUqgFXQkKvwrt0fl7TF
 w3vta1609Fw/1hrtHeZ3ni+an1xa1BV/S8mAOgfEYpmvNWimigeH8cs0WJlLBXK1NV2ntmB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_044239_057000_EA4D7C09 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] FW: [PATCH] brcm2708: rename target to bcm27xx
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

Hi =C1lvaro,

thanks for your fast response.

So far, I=92ve changed the target name to bcm27xx, but kept the packages as
bcm2708-userland and bcm2708-gpu-fw (so, without the =93r=94, but also with=
out
introducing the =93xx=94, as I=92m not sure what=92s more appropriate there.

Do you think I should also change them to bcm27xx-userland and bcm27xx-gpu-=
fw,
or keep them as they are in the current patch (bcm2708-userland and
bcm2708-gpu-fw)?

Best

Adrian

Note: Resent this to the list as the initial mail was too big.

> From: =C1lvaro Fern=E1ndez Rojas [mailto:noltari@gmail.com] =

> Sent: Montag, 10. Februar 2020 13:00
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>;
openwrt-devel@lists.openwrt.org
> Subject: Re: [PATCH] brcm2708: rename target to bcm27xx
>
> Hi Adrian,
>
> Thanks for taking care of this.
>
> Acked-by: =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
