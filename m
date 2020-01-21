Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361DA14442A
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 19:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7krvp+W2I3fu0j68HllxJV7onkezuHX+w5l6hceMWhM=; b=o0NK+16vwYKbAI
	QtdanTsyazLk04IykehzUTY3dzDu+q9D1xh7sB5y/9JltM2RLPIZmI/+X6CiPNmOtYmGqv+i/rvvu
	jImLAT9kqyLBEjGKOxCsKakvH9peIk6bVT4viYp9dEA2UyZo8uCVMB+zZEUEW4QWJI+EkWSMX4kgB
	t+U72EAkoMXxQxEbuukL2mbSZyf9w/5EbSoluyCQknxt+hXHpthFQ9WyXdjBI3+H5XfhhzcRp3Rdy
	GMMNoNb3iPciOT4XdwX5pJVtzeoQD2h607lSEIKnSO7AO2TYUGjBeQquJsBOw8Mrh+E0euQE2V0MS
	wG+c1DuAtQ6IeHs9/0dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ity8T-0002lf-Cf; Tue, 21 Jan 2020 18:20:21 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ity81-0001QM-As
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 18:19:58 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1ity7w-0004Eq-Fg; Tue, 21 Jan 2020 19:19:49 +0100
Date: Tue, 21 Jan 2020 20:19:33 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org, hostap@lists.infradead.org
Message-ID: <20200121181933.GA34748@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_101953_376505_7A4B0EAA 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] hostapd and Linux bridges
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

Hi!

I was trying to use client isolation on a dual-band router running
OpenWrt and run into a rather trivial problem:
Despite hostapd supporting client isolation (ap_isolate=1), on devices
with multiple radios (dual-band or tri-band) this alone won't have the
desired effect as AP interfaces typically are put into the same Linux
bridge (ie. bridge=foo is set to the same value for all APs accross
different bands). Hence, clients of one AP interface would still be
able to communicate with clients of another AP interface within the
same bridge.
Linux' bridge code does support port isolation which would complement
wireless client isolation, however, in it's current implementation
hostapd only uses the SIOCBRADDIF ioctl to put the interface into the
selected bridge and lacks support to enable bridge port isolation for
that interface.
To resolve this, I suggest to add netlink code to allow to set port
isolation using the IFLA_BRPORT_ISOLATED attribute to hostapd.

Doing this with external tools (iproute2 'bridge') is not feasable as
they are typically unavailable on small embedded devices (think: 8MB
of flash total, adding iproute2 'bridge' tool with all it's
dependencies would add hundreds of kB) and also would need to be
triggered somehow which in the end would be just as complicated as
issueing that netlink call inside hostapd.
On proprietary APs it looks like port isolation is enabled or disabled
globally in Linux' bridge code using sysctl or other methods, an
approach which is unlikely to get accepted into the Kernel, also given
that the netlink interface already exists and allows doing the same
thing in a more granular fashion.

Please let me know if you agree with my analysis of the current
situation -- maybe I've missed something obvious -- and if adding the
netlink code to also set IFLA_BRPORT_ISOLATED in case ap_isolate=1
sounds agreeable to you.


Thank you!


Best regards


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
