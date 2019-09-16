Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39018B38AD
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Sep 2019 12:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oWSBBD5jJJHzvCSM7FNhDix4oynPxqPOLLVLjd7jNP0=; b=WLKxxgANDqWpicE4qe+IeJ1D5c
	Izaq4FOeDrrvFTxwmj7qdsix6L4o4CfFHCylBpfMxBPtR7e8PdZcE5zMcygWJVEgO4EzqK3NZEGpw
	D9hVXeCBHK/tau3DfwFfbtEA6XtJdkUt6CFHTDH180uRuvYt967XvtfGeyZuytktUosAb/XLx+p36
	yywHVUqnlA/34BInebiOqyiNm7t5bNUDky0McGdsw6PG1BhPLqEv1gt/BctP19OxnBERm2xk9Szam
	9I1UgJdDcseKddftZd63B7vMWHl4iw/jlHPJrFnuj+KULSLhuCmpymub0/28o0gpW3TD6oSjcPYYg
	agbT2AxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oeP-0004UI-BU; Mon, 16 Sep 2019 10:54:33 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oe3-0004Tr-KP
 for openwrt-devel@lists.openwrt.org; Mon, 16 Sep 2019 10:54:13 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 3326F2005B;
 Mon, 16 Sep 2019 10:54:02 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 16 Sep 2019 12:54:02 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: hauke@hauke-m.de, john@phrozen.org
Organization: TDT AG
Message-ID: <26a9b03930d8b13ab11d66f654976619@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_035411_824219_6E22A373 
X-CRM114-Status: UNSURE (   4.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] Lantiq xrx200: Access to ethernet phy registers
 (MDIO) from userspace
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

Hi!

I am searching for a possibility to disable Auto Negotiation of an 
PEF7072 which is attached to MAC1 of the Lantiq xrx200 switch.

The xrx200-net driver does not seem to have support for that.

Accessing the STD_CRTL register on the mdio bus from uboot with the mdio 
command works like expected.

Any suggestions how to do that from linux userspace?

Thanks,
Martin

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
