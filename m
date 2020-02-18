Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5AC161EC7
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Feb 2020 02:57:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t6DEptSVaQC/xJvhFmCOORepbxsXXrKFEk9AwtjDU7A=; b=pZJxWy9FKnza2H
	8RJ3J1YSz0abe2TJizroqyO7yeYDM/nQ5UNJDByaEprA1e/p/+TKRUARUWISe99baNvfeWFlp8ZzB
	UcnLrARaLCyhM+UrtxySbLDQeQRMXbZIh9s28NVNmM9h+Pjj39U/W/A+20MHqj3k5xnFP/T41YqQ2
	uvDWU2/bBpBzoPTq7KUZAyzvnpdLMBdKrQHV03OXYUkZ7MpQtxCJXs4BZWOnNk3axnYY8Kdcama9Y
	jZoDVv22Q6X5EFAQz1LkCvUYvoe/HmR8oi/dIzwGCqM/TCwzoPUdPgXlFrVrJCdsoCAuJi5HDwbNe
	RBN328I7vDPy7YWuCu7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3s8q-0005cc-DE; Tue, 18 Feb 2020 01:57:40 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3s8l-0005cB-C1
 for openwrt-devel@lists.openwrt.org; Tue, 18 Feb 2020 01:57:36 +0000
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [71.244.250.131])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id 5E2E0120
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Feb 2020 17:57:24 -0800 (PST)
Received: from imp.flyn.org (localhost [127.0.0.1])
 by www.flyn.org (Postfix) with ESMTP id 8E0DB26001F7
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Feb 2020 20:57:23 -0500 (EST)
Received: by imp.flyn.org (Postfix, from userid 1101)
 id 56E3522A025B; Mon, 17 Feb 2020 20:57:23 -0500 (EST)
Date: Mon, 17 Feb 2020 20:57:23 -0500
From: "W. Michael Petullo" <mike@flyn.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <20200218015723.GA613585@imp.flyn.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_175735_413062_60438A36 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [8.23.224.60 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [8.23.224.60 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] Master kernel not building for x86_64
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

I am getting a configuration prompt while building the OpenWrt master
kernel on x86_64:

[...]
Dump the EFI pagetable (EFI_PGT_DUMP) [N/y/?] n
Warn on W+X mappings at boot (DEBUG_WX) [N/y/?] n
Enable doublefault exception handler (DOUBLEFAULT) [Y/n/?] y
Set upper limit of TLB entries to flush one-by-one (DEBUG_TLBFLUSH) [N/y/?] n
Enable IOMMU debugging (IOMMU_DEBUG) [N/y/?] n
x86 instruction decoder selftest (X86_DECODER_SELFTEST) [N/y/?] (NEW)

Note the last line, which preceeds the prompt. Does the following commit
need to be applied to master too?

https://github.com/openwrt/openwrt/commit/d91b52b1a2edd3645c88b29deb1091ae5f82fda8

-- 
Mike

:wq

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
