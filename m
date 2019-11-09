Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F4DF60DB
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 19:35:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoRfJW0AipjDXNwxrqnPUyZj+2R9FAjGtI+0kFnSjLs=; b=udq47H1POGNjk6
	2qOpt57hKjN8OugRQwiJDwE/Kj8AwMDEQKK+P9rXzEuS1VBTmdjXC0Rmf8v/x1w5d3kxeFnzqejs7
	cVZLerUFsTVwbUfP5pqRa+t0cuPgVtFGof4yKLMDlFYox6INntn1RBXsWJbWITt+pyEBUmhB/PNCA
	VcibagGnosTr+TqFASGUe8CleiqZCL8864mV/IwTrWzyO3OOmIg2zebM0j0PgKZ8zSi4DdqHXjfG0
	HKv6aEbFzhJ1L1Udy2Rl6+RNzBc8UpsikLDtaRfSzNqYZYrb7T5r4bDyrHgjPaz7hwm0hNJdnsgfk
	kT87FefAHh++Tg/KuK7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTVaF-0007Ws-T5; Sat, 09 Nov 2019 18:35:39 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVaA-0007WM-8L
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 18:35:35 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iTVa7-0002VS-26; Sat, 09 Nov 2019 19:35:31 +0100
Date: Sat, 9 Nov 2019 19:35:27 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: John Crispin <john@phrozen.org>, openwrt-devel@lists.openwrt.org
Message-ID: <20191109183527.GB1565@makrotopia.org>
References: <329489a2-3619-b0c6-3705-b10acbe69917@phrozen.org>
 <20191109173545.GA103328@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191109173545.GA103328@makrotopia.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_103534_295176_1DE8DAA0 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2 5/5] base-files: add 'wifi reconf'
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


On Sat, Nov 09, 2019 at 06:35:45PM +0100, Daniel Golle wrote:
> From: John Crispin <john@phrozen.org>
> 
> Now that netifd and hostapd allow dynamic reconfiguration, add a
> command to trigger it.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> v2: unchanged

I forgot to add the Makefiles of base-files, mac80211 and hostapd
which contained PKG_RELEASE bumps... I pushed that to my staging tree
now instead of re-posting the whole series once again here...

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
