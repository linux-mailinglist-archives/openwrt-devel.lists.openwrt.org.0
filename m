Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ECFAFEB3
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 16:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VIz93Dd4gOGszXqjuBnWBsmAdDMZiepz2GFKlGnt7M=; b=I59almxhhpZcFa
	3ZI6awadw3E9CFljYUTV73DnJNvrkx6ac/bmsOW2fJjbu/yDKlTwdHSUUnyAYYMAyZkiS2X/l3ZC+
	wUsIGU38Ych/kD7LKgc62ymJym4Ofqv6iVU27Mp+/fa2j6255HDbSVzD8wnjK4IPCXb81TgvAdhuG
	v8frvuScO5rR0n/g6C0H9EYRytp84fevidU/SnfVVn6GzNUu2hhMMZB9dPFuhj9NK01GnyODB2u85
	H/2kdADFo3liBsvTwrmjEUciuUMOR4Y679YaKxR138x0fPNDladVYCTRt5GW+vkjcwoesnrRHFtFN
	ZODmeEICbLia7GEewPLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83Zc-0005CW-KG; Wed, 11 Sep 2019 14:26:20 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83ZJ-0005C0-Nx
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 14:26:03 +0000
Received: by mail-lj1-x243.google.com with SMTP id q64so9667564ljb.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Sep 2019 07:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=samknows-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wy5XF4dCTpdM5kUoxDOre4iXfekNLXhtPb6D/jW1o/Q=;
 b=sUQRNI6tfc3QfYYf9/guWyx+dPoAfQL8rDcwpfiqZ/esjH4pOGh6wrFxPfm1BxkM+R
 I0402ru2T6l1OXbkjIG2a8H1lUU6IIhKWD65Z858iUgKqdDkZN0auplFUiho2Xog5ue7
 a8N7XIjcDXpBktL9QT2RY/3Af+bk4aMkvUY3BPeG2jHfHemHrUlhb4oJsY4a1GA4LnJO
 WKgca6eUaYrb3F5BYcSlnucRmDGUVxTdQvuh7iq773kPL3GuA5iAPHLzLjJ24FQLtT+2
 k2cr8Sv2azQQpgAhn113XPc91SmhcYkClIeB6Xdf+EdjRHdhKH7uoZKcaD8noCuUiNx2
 p1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wy5XF4dCTpdM5kUoxDOre4iXfekNLXhtPb6D/jW1o/Q=;
 b=lIyBqjn124ItyCuIo1j/YG7+FIwH+ogw8fKfA0el9STDvrMLh/T6DPBx+mUTaS7HKB
 uSyTFrKcex75Tw1MjzijZ4XyG2FA99AwZwuINeCurpkj4k3LgisPr46cACAP+rMsQR2x
 b0L07c+LIYSMJ7Y2LL3eBQ3SAy2beDm//F3O1iL/ux/Wlc9uM/4y+tMPjGQxg9pViUKg
 QY1xp9elwNujoyPuryE7WniQFteHodLaDFAZcZgwLrvd57Q8non3kfHY2Z0uFcqauY3p
 v5LK6zAkNgjHOW2Y8yIyMx+/3UrSfhVmRCwS3Mrii4i1nKrvDWHAkmln3iZHAO4Z6E30
 3YGA==
X-Gm-Message-State: APjAAAVk42tQnu3N4FrNWgSwoJKuaN2syjpE6/0xsMEBmXTrG7HVLpqI
 wxxD66TT8W3OIzC/bqY5JnEGyPFtpqj/rRkh6xFMkGWJa2A=
X-Google-Smtp-Source: APXvYqyfTkXSUKdh1kPQYJ8KKsBYtFlJrnb2ezX1/qQpBsuHhDUdlAQZjyv73v4VoAvrU6wN28Py51Tvoxhjg11dNN0=
X-Received: by 2002:a2e:8542:: with SMTP id u2mr1366998ljj.149.1568211958053; 
 Wed, 11 Sep 2019 07:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <CA+OT2oE7MRfmzKjeyc=rFhWL-9ui-U+ttY+67j8sX2GPFmoibQ@mail.gmail.com>
In-Reply-To: <CA+OT2oE7MRfmzKjeyc=rFhWL-9ui-U+ttY+67j8sX2GPFmoibQ@mail.gmail.com>
From: Salvatore Mesoraca <salvatore@samknows.com>
Date: Wed, 11 Sep 2019 15:25:47 +0100
Message-ID: <CA+OT2oF8x4__f=byjD7asueU9mAzmjP8xdQ3aQH19fhh22MVJQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_072601_826232_AD54C6B5 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] nftables: named counters broken on 18.06.4
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
Cc: Salvatore Mesoraca <salvatore@samknows.com>,
 Vincent Wiemann <vincent.wiemann@ironai.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, 10 Sep 2019 at 16:20, Salvatore Mesoraca <salvatore@samknows.com> wrote:
>
> Hi,
>
> I'm experiencing a problem with nftables' named counters with OpenWrt 18.06.4 on a NetGear R7800.
> This is an example of what I get:
>
> # uname -a
> Linux OpenWrt 4.14.131 #0 SMP Thu Jun 27 12:18:52 2019 armv7l GNU/Linux
> # nft flush ruleset
> # nft add table inet filter
> # nft add counter inet filter mycounter
> # nft add chain inet filter output { type filter hook output priority 0 \; }
> # nft add rule inet filter output counter name mycounter
> Error: Could not process rule: No such file or directory
> add rule inet filter output counter name mycounter
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> # nft list ruleset
> table inet filter {
>         counter mycounter {
>                 packets 0 bytes 0
>         }
>
>         chain output {
>                 type filter hook output priority 0; policy accept;
>         }
> }
>
> Running the failing command using strace I can tell that the ENOENT error is received from the kernel via Netlink.
> It's similar to what I get if I try to reference a non-existent counter, but "mycounter" exists.
> If I remove "name mycounter" from the command line, it works. Of course it creates an anonymous counter.
> The message sent via Netlink looks correct, so I think that the problem resides in kernel.
>
>
> On a PC with 4.15 the same command sequence works flawlessly:
>
> # nft flush ruleset
> # nft add table inet filter
> # nft add counter inet filter mycounter
> # nft add chain inet filter output { type filter hook output priority 0 \; }
> # nft add rule inet filter output counter name mycounter
> # nft list ruleset
> table inet filter {
>         counter mycounter {
>                 packets 0 bytes 0
>         }
>
>         chain output {
>                 type filter hook output priority 0; policy accept;
>                 counter name "mycounter"
>         }
> }
>
> Any ideas?

Solved.
For future reference:
The kernel was missing CONFIG_NFT_OBJREF, without this option you can
create named counters, but you can't actually use them.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
