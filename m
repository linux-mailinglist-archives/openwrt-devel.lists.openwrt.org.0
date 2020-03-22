Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F59C18E894
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 13:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AF8eq9zkaxZArW/cFGw4ff7JZRR74+xHt3xNHiH54O4=; b=KI375agDmyv3x1
	CNwCmfjhVeXR5fMm5Ay9a5E9uIwlyrpN8zHDTHwcgc5U4RF5NrOXqQItGa7Ftg4wY+1FPyFX4/fS4
	fi/a+K31dM/3yZO0ZYyXfuRha0lzJgp8vFlSCkc5NcZD5Ldm63b/QeVFyjwGsnJGGdcor7Kmf6BR5
	rZl7JMIZlxqr/V7nUWLUOoJON9S7mWi1n3ppnlQiYJyfx8PKqsdvZOm1ttYN3D2S7y/VP89rucu/B
	83SthXlx5tTFRlKgl46Y2JGjK4LqUIsJZ+fF5/duA3lJZogrN0CZ9nZhShuOzlMsfZ0/5Gi7Za0t1
	zT81VlmkMvCr4JVsoWCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFzbx-0002tQ-Ow; Sun, 22 Mar 2020 12:21:49 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFzbq-0002sS-GB
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 12:21:44 +0000
X-Originating-IP: 85.214.243.122
Received: from erker.lan (megumi.opennet-initiative.de [85.214.243.122])
 (Authenticated sender: lists@sumpfralle.de)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 4EBB01C0009
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 12:21:37 +0000 (UTC)
Date: Sun, 22 Mar 2020 13:21:34 +0100
From: Lars Kruse <lists@sumpfralle.de>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200322132134.2933e467@erker.lan>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_052142_676006_BF36E42D 
X-CRM114-Status: UNSURE (   3.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Repository for release or snapshot build
 configuration?
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

Hello,

I am one of the developers of an OpenWrt-derived firmware (for a Freifunk
community - "Opennet Initiative"). We are building images and packages for a
small set of devices.
But sometimes we stumble upon differences between our build setup and the one
used by OpenWrt for its release (or snapshot) builds. This raises the desire to
known how OpenWrt is building its release.

I assume, that there is a set of build configuration snippets that are used for
building the different targets. Or maybe it is combined with the buildbot setup?

For now I was looking for this information in the following places:
* https://openwrt.org/releases
* https://openwrt.org/infrastructure
* https://github.com/openwrt
But for now I failed :(

Any pointers are appreciated!

Cheers,
Lars

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
