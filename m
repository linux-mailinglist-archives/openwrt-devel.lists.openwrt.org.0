Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB020112D05
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 14:56:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpEL2gR7soigss0ArUvyVuAQklzHPCtBKpRDEgDCFxA=; b=N0gDz/ZcVvMyJz
	2Td2YPXBghlFb2wSYGw8M8PfPX3ApP02PfzYMU5zvg3WALT4xLXD5ionii5pZduEHAvkpcI9zRk/t
	kLREaab1yu/RhRZPUtLUpZNmUXP0Dea3UWaKF7Wv1zt3RurbWMTB1cHeEe1jCxcuPv8+ws0nue7uN
	HZmhwHjt6XFdnH3C3LGi/acCUF0kUSSIah3qQKU+AYirXAkZFC1cjlWa85AF4qCjqX/sEEyfjUuLM
	8f7Hd0JlU/l4l3M5WKviedB01HuHqnhfaOC89/2t4jAZudySdHOP8zJprJqnyq7fZYAgKW4tbNIZp
	zxbsvWbL1nX/ISLeiahw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icV8i-00010p-L6; Wed, 04 Dec 2019 13:56:24 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icV8Q-0000rU-S3
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 13:56:08 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 23284423416D;
 Wed,  4 Dec 2019 14:56:01 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id rK2m_upixl6o; Wed,  4 Dec 2019 14:56:00 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 68EF146D19A1;
 Wed,  4 Dec 2019 14:56:00 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 68EF146D19A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1575467760;
 bh=8TvFKIrRnHOTcz6zflkYaJoSpWIN3t/in4apEiuaO9g=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=ARAuotTv7SqLOPl17SpmBGG3RmgFCbBA9yMCGM3LIWkP1WxcQS3bbZQmmjLfQ4QbG
 YTRKvhVRZgvW356WAn+HuC6U2gAzsIAnFMKt6esWqfijT36vYqU7JZc1V4aFsAXjE3
 LGfVepatVmS4/Jqgkp2EW+aMwUQ3BFysfkXlYcOc=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id hMfq1HbwtN6R; Wed,  4 Dec 2019 14:56:00 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24::adb] (taz.sof.bg.adlevio.net
 [IPv6:2001:67c:21bc:24::adb]) (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 6B98C423416D;
 Wed,  4 Dec 2019 14:55:57 +0100 (CET)
To: Tom Psyborg <pozega.tomislav@gmail.com>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
 <20191203120930.GC8181@meh.true.cz>
 <010701d5a9d3$92f3c320$b8db4960$@adrianschmutzler.de>
 <20191203123144.GE8181@meh.true.cz>
 <12d89195-b1b7-5f9e-52a8-5411ad142733@linux-ipv6.be>
 <012e01d5a9d6$c03434c0$409c9e40$@adrianschmutzler.de>
 <CAKR_QVJJGjHrwj=vE_UkAi4YkKQYLarJgT250jCJ2zTQTxfRsA@mail.gmail.com>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <9fe127a2-7707-c352-c669-11570377f496@linux-ipv6.be>
Date: Wed, 4 Dec 2019 15:55:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAKR_QVJJGjHrwj=vE_UkAi4YkKQYLarJgT250jCJ2zTQTxfRsA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_055607_215406_F7BF228D 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 4/12/2019 15:37, Tom Psyborg wrote:
> Current changes from Stijn's branch look fine, I've applied them to
> the master clone from Dec 2nd, built and flashed; mac addresses are
> correct, ethernet is working as well as both wifi interfaces.
>
Can I get some [Ack|Review|Test]ed-by from you guys?

Thanks
Stijn


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
