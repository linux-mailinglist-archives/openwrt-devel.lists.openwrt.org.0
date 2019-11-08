Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FA7F5157
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 17:42:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ozNriMpGenIQOW/akG6Puw1vAdU7Jgcao1jWjmnD58=; b=EYe93c9RQ3vRzk
	Lfz6yLYUC8/cKCzSbx+Sq1Wabzj8ewOUs/VNnFIOnQf+3s1lhYRJfnp7IUIXlMukyuqULt4s7wpcY
	pg842wBU/9tXQw/JDqMJKPvw1fscWlj7ZYDyEdGt6Jn7y2yXOsRGq3LQCnpDw3FqszOzAImLe2euj
	TPXkZIwaRIVFCSzp908+2iaSTSihCsl18uPHYhuULt1mOdu+n5YlMyDAFSImk0Mqaunb6KospDi4V
	krE23yoUXm8dDBHB4mnSLZXsU9g1tMfaNnndUX5PpMBv0QotBro4PkDRaf5Z+R117bE8lC8qH3+jW
	3s9O913dVDFowlaQZi0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7KX-0003SX-2S; Fri, 08 Nov 2019 16:41:49 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7KM-0003S2-LK
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 16:41:40 +0000
Received: by mail-lf1-x144.google.com with SMTP id z24so2009760lfh.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 Nov 2019 08:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4IwxT/e0P674V73/1pqhZb/jhfeIWTXmK6oi+6Ihkzs=;
 b=tXVRyoECtXSWINmZxKcBDm4CkKCHuPaLOiBfzHNgDM+0CyaY86O9hjAnphRjW2Z/9m
 DKPlcPqmMIFuiH4fu/wUaViutkC5QEPZ45v1KgYYDzAFfP6bEkwVQqdQlp0cPtuo8cCf
 073+vonyJ8OBp4NarySXqdpvgNYI2XwDXLBdnQbuKo0pQi0u0KPVEN8JGnSWHubRuYok
 8jbNSSUDNiGcHqTBBJSB27KQ3QVNfySYdRZldGghMm8nKNKxxYsaN4FjejKIPbJjrxqI
 CrTi+giltghFrtC8nbelSl2aitr3VBkNm6QHfbCwCViSvUSDsSrTxDLM3XzkW0qx/wAR
 JAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4IwxT/e0P674V73/1pqhZb/jhfeIWTXmK6oi+6Ihkzs=;
 b=p3FpEDUKEyrHj6de3JmZdlVEengbJStrIrsHvQoi7ANQFd87UFhN0XIUiB7mgRDpTp
 RCcWCXEZxIJnk/N0P2QnyUtl3w+QWRoyW//5U48VKdOMrh46v/YTqzuarlsqiRIrzP6b
 81cr3QEtVcRaLmuVm5ov17HyTymNDTTNXD4sYr9TZHKlsqGY8V12AR8KhHK+sxiXZw2t
 kh9hd/xjaar3h3h8Q+64ujziifR6MQ13IRzkSDPKr6nDBhat4ufw5nzY9BGjKcKnjIQM
 /oCA9HCI16cYWPcLz/OHtvGU66ZMVOReqlVEDVbJJgL85g7uCeeekn3+zNQet/tV75ye
 XLgg==
X-Gm-Message-State: APjAAAXsUvYl/SWwTb6fxVYTFqC3QhtYJxSF3JLbtfL24+5iWmFvjDOx
 nhFq79+LUuJBcbwthz6UHwM=
X-Google-Smtp-Source: APXvYqzxjYrOTvER4fAGTiNV5cfurhzuwWNxdUgZVDdCiJ8UuGDtox+Rj6M1o/Z+CZEotdjgE1v4mw==
X-Received: by 2002:a19:6d12:: with SMTP id i18mr7340798lfc.153.1573231297048; 
 Fri, 08 Nov 2019 08:41:37 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id t12sm2614138lfc.73.2019.11.08.08.41.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 08:41:36 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA8GfYpu023332; Fri, 8 Nov 2019 19:41:34 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA8GfYXb023331;
 Fri, 8 Nov 2019 19:41:34 +0300
Date: Fri, 8 Nov 2019 19:41:33 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191108164133.GX1190@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <024701d5932b$2eba0f40$8c2e2dc0$@adrianschmutzler.de>
 <20191104165429.GT1190@home.paul.comp>
 <00b001d59644$5a7f1c80$0f7d5580$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00b001d59644$5a7f1c80$0f7d5580$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_084138_722524_2D0FCEF8 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On Fri, Nov 08, 2019 at 03:53:59PM +0100, Adrian Schmutzler wrote:
> > With that I have 6 eraseblocks left for the rootfs_data partition (5
> > is the absolute minimum jffs2 allows).
> > 
> > > Be aware that you might not find someone willing to merge this.
> > 
> > I do not think this device is any worse than the other 4M devices
> > supported by ath79. [...]
> 
> Well, TP-Link devices have 0x3d0000, Netgear has 0x3a0000, ...

With the useless partitions concatenated with firmware it'll be
0x3b0000, more than Netgear, same as many 4M ramips devices.

My current guess is that "mac" partition initially contains MAC (but
it is not used as D-Link specifies their own in nvram) and "lp" might
be a "language pack" which is to be downloaded and flashed separately
when using vendor firmware.

But even with 0x370000 I showed a sensible set of software that still
allows to have 6 eraseblocks for rootfs_data. I think the only
possibly essential part missing is DNSSEC but that would assume one is
using such an old and limited device as his or her border gateway
which is unlikely; yet this old 2x2 router can still serve nicely as a
"wireless extender" or just a "dumb AP".

> Well, on the other hand the question is whether we want to deviate
> from the principle of keeping vendor partitions to add support for a
> 4/32 device, especially since the partition size will be still small
> in comparison afterwards. If it might stop building anyway soon, we
> could also keep the partitions in official repo and whoever wants to
> use it will have to mess with the code.

For my own use I'm certainly planning to self-build and to have
firmware partition span till the beginning of "art". With regard to
the official tree, I guess that's up to the target maintainer (and
possibly the end-users?) to decide.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
