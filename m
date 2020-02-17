Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B01161070
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Feb 2020 11:53:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZzueT9IIZQErh/w1vVGz6jVa+dWePmRTkgpZgAEAGWo=; b=SPBvfkxXt9syKTDGv8yStO5Pkz
	L+BNgWMSXNezVJ4hvtA4aVD7NQrftjAi6J9D759f/58YTvHtSz24cFMZsmzURjmqmKm/PXVgNZVzV
	vwQY2z8lMf2qFcH9kE9ILwbSWBnfBS4H7WK54wk/vwroCyepFLH7OMBhMiJPQWXmujcTVSIq4oX0V
	W4NWZ5L5Gxms7qMx7/D0YfGJBkTc9EeyIA0m6P0WEt/z283lGp+JZv+yVmHg10UJAMGshrEXlRJdd
	4qhSyq3MJUJ90ctfXPMrMksrW1OjWtq/l03mbJX26hCe3D97DvSUOUzOMjPLtUgvegOPITOE2ogKH
	yaCtD2cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3e1n-0005Uy-3p; Mon, 17 Feb 2020 10:53:27 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3e1h-0005UP-8Q
 for openwrt-devel@lists.openwrt.org; Mon, 17 Feb 2020 10:53:22 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id EF9DE203E2;
 Mon, 17 Feb 2020 10:53:04 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 11:53:04 +0100
From: Martin Schiller <ms@dev.tdt.de>
To: mail@david-bauer.net, john@phrozen.org, hauke@hauke-m.de
Organization: TDT AG
Message-ID: <d3de48f29fe9468c7269c435d621ab56@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_025321_449965_7C4EB0F8 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] [WIP] vrx518 support for AVM Fritzbox 7530
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I've done some work to get the vrx518 running on the AVM Fritzbox 7530:
https://github.com/3headeddevs/openwrt/commits/vrx518_support

The current status is as follows:
- The VRX518 TC driver is running in software datapath mode, which 
required some codefixes for the driver to compile at all.
- The line is synchronized in both ATM and PTM mode
- Outgoing data packets via PTM go out (I can see them behind the 
DSLAM), but no packets are received.
- ATM is not really tested so far and maybe needs some further hacks.

Therefore, I took some driver/software from the Intel UGW-8.3.2.30 which 
partially were published on prpl gitlab.

Alternatively I extracted the binary firmwares (ACA, PPE, DSL) from the 
original AVM firmware images. But the result was the same. (except that 
it contains the ADSL ANNEX-B firmware which is currently not available 
on prpl gitlab)

So the implementation is not really functional yet, but I would like to 
share this progress here now, so that other interested people can help 
to get the whole thing running.

Regards,
Martin


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
