Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAB8C03D1
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Sep 2019 13:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=APC8xinu+Sfi1MiA1vHYeWnn5w5f/GXE6xH5m5tELlc=; b=b5lr09bA8i2ysA
	/pchMnaAS0PrE6kJVxUYOJjE0AAyGvoat8n/3rnl5bLOxU7fnRo9YOetGs2cr3uZ9z2bHgmOLDRHj
	p8Uasd7h2E+tm1/GtqZIB6InoaWKg/2cNmA1ahagDPLywGy4tv188wTXs4drje5lwSGU4l+Sd3nMh
	9aUEF7ym4ewOm3JcVMCu3I5Nm10W9p2AAyALUSOHfuzsanLCXRUc07CVEDn/cCNj3JnVxY14wtJ0b
	AQ7ZoXb2QpA90EaJ9yoJxZ2iLcIgOx6lUNs2dSwkjUYacQ6USDU2+6dEbTm/DydI++x11hm1Or8OW
	bXT818T6RJ+KuXr9V3sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDo4B-0008Dz-DR; Fri, 27 Sep 2019 11:05:39 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDo44-0008DT-8v
 for openwrt-devel@lists.openwrt.org; Fri, 27 Sep 2019 11:05:33 +0000
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [68.134.9.136])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id 666ED669
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Sep 2019 04:05:21 -0700 (PDT)
Received: from imp.flyn.org (localhost [127.0.0.1])
 by www.flyn.org (Postfix) with ESMTP id 212B3E4008B
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Sep 2019 07:05:20 -0400 (EDT)
Received: by imp.flyn.org (Postfix, from userid 1101)
 id A006A22A015F; Fri, 27 Sep 2019 07:05:19 -0400 (EDT)
Date: Fri, 27 Sep 2019 07:05:19 -0400
From: "W. Michael Petullo" <mike@flyn.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <20190927110519.GA25228@imp.flyn.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_040532_318397_9928053C 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [8.23.224.60 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Wait on syslog-ng
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

A daemon I wrote for OpenWrt depends on a running syslogd. I use
syslog-ng, and I have noticed that its init script completes before the
daemon begins to listen on /dev/log. This causes my daemon to terminate
if it starts quickly after syslog-ng.

There are a few obvious solutions:

	(1) My daemon could sleep and try again if its connection to
	syslogd fails.

	(2) My daemon's init script could sleep for one second before
	running the daemon.

	(3) Syslog-ng's init script could sleep for one second after
	executing syslog-ng and before exiting.

(3) seems the most universal, but all of these feel a little kludgy due
to the reliance on a timeout. I say this becasue you cannot precisely
predict what the timeout value should be (in practice a second or so
seems to suffice).

Does the init system provide a more general way to solve this problem?
The START=n statements seem to impose only the ordering of init script
execution and have no bearing on whether the services the scripts run
are ready. Do I have this right?

I did see sleep in a few other scripts such as network.

-- 
Mike

:wq

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
