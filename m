Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAF7186A5D
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 12:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4uG7p3SVihaDCg6YM6JRYQsXaIKQkSRe9uKnPiC7JU=; b=l5Yd1ZbrcA27rt
	e4HMMTzmuVhrLRYttN/MCJCAIAyYYQoBf9/oksJGZMkTo51lUkRhazCGugan1JfRGLfS4qgtiiBXq
	seXCG/GNt9SSA2N0AVbpKxizaYBT2MjQ15HQrmN88gpb2PcZvuKoQ8wQdSWpVxhPBvJFBDT1t6tuy
	LwmdU7WfKgJjOH8uwnBei88KIJNdc1j/WE8Br1mVGHlnbM0HrYlUhJxdvlwxA08JTM8jyBHPPO9bA
	9ivBB68ntixnVH+Oby3r1ROU+UkTAbi5xTMuDhKB+noJk3ROGgePCKQpP5DQijKFLFSpfTofqUZ99
	vCXWRBMhexHhvbLyl34Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDoGU-0006AG-7k; Mon, 16 Mar 2020 11:50:38 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDoGN-00069o-LX
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 11:50:33 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id AE5E9472FE7B;
 Mon, 16 Mar 2020 12:50:23 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id l0g_dIxoIZqB; Mon, 16 Mar 2020 12:50:23 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id B5C054745D76;
 Mon, 16 Mar 2020 12:50:22 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu B5C054745D76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1584359422;
 bh=3s6OmveAPGqT5f/1sZmYU4qSOc5SPUnxGloP5BE2rRs=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=NepD2TvuGZucNM0b8LHXk99gZciLDl3lyAfkAyZFs0G+d3IOAhHlqwGg/LTJJSJAg
 a8Xc4GRZ89RPtwA6jR6FL0C6H8ShPB/+nqmtqssYvc0i6Fvl/SNVBGR2yPedKIqfIB
 Ibp8iO8m1EehVL2i7+80UHyWq7lpOOU8PT510gf8=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id DPEtYr2EUs7N; Mon, 16 Mar 2020 12:50:22 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24:92a0:d683:3fa4:10c7] (unknown
 [IPv6:2001:67c:21bc:24:92a0:d683:3fa4:10c7])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 4C50C472FE7B;
 Mon, 16 Mar 2020 12:50:21 +0100 (CET)
To: Hans Dedecker <dedeckeh@gmail.com>, Mathias Kresin <dev@kresin.me>
References: <20200305193427.17434-1-dev@kresin.me>
 <CAF1oqRBVWHEHG37GTnUZ0vW-VsvK4pTp0rUBJq-MP3+wgCXOdw@mail.gmail.com>
 <8294a7b0-68f5-9708-72b6-8d7207cad8b9@kresin.me>
 <CAJLcKsEL1yhYfqs0V+ksygMS+ZWyFc1__ge9r=tbm95wHQPtJw@mail.gmail.com>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <ea486a85-4212-b536-0d70-12ad7ada5a09@linux-ipv6.be>
Date: Mon, 16 Mar 2020 13:50:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAJLcKsEL1yhYfqs0V+ksygMS+ZWyFc1__ge9r=tbm95wHQPtJw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_045031_995290_2C62D572 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH] iproute2: revert add libcap support,
 enabled in ip-full
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
Cc: =?UTF-8?Q?Alin_N=c4=83stac?= <alin.nastac@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 16/03/2020 09:37, Hans Dedecker wrote:
>>> One would argue that ip-full should correspond to the full fledged
>>> version of the packet. If the dependency of an external package is the
>>> issue, how about making a different variant with HAVE_CAP support? It
>>> could be called ip-really-full (or ip-fullest).
Yet another ip package seems messy to me.
>> Try to get libcap into the OpenWrt base system and enable HAVE_CAP
>> afterwards?
> I'm in favor of this approach as currently a part of the ip-full
> functionality is broken and I see ip-full for now and in the future as
> a core package
>
+1 for moving libcap to core. Other packages could benefit from it too
(lldpd comes to mind).

Stijn


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
