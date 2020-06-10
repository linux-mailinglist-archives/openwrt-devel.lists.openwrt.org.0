Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590791F55AE
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 15:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9XWP7hM6QpgLwujwXzy7OF7JFaZVybXgt0yKkuZsvCE=; b=OoQs87fWDaPTRIISNTo15xa/bW
	0SqFasLulgcrbhH8BftofycMSr4vXxu1zG9QLh7lJE/jxcPw35+MJZYehK9/5Lr/IvK3fspmWW9TP
	6XK9CU5qZDdO5Au0yzCb4fjsb5ZRVpp9vqqoVt4GYJt9AUI2e6xlFeUiG6mefbsiPA57ZeDQaD74H
	Q2iUuYwo3xqsFnngjrefM56odnFCpZyn6v6XGuPGsRYWTJujYC+PpSAHiPSCkk6GSgabhtI+KJiWd
	jS7JeFuMlY/4/s29k5UPy9WJQ0Ik5sjCNbpPOOTl2JQijNnJzBQ9HaEr+EFDI0Vkeu3lKWKj2Yj5J
	nzdBw+rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj0hv-0000DQ-Ou; Wed, 10 Jun 2020 13:23:55 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj0hq-0000Cl-Qv
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 13:23:52 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id E597420056;
 Wed, 10 Jun 2020 13:23:25 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 10 Jun 2020 15:23:25 +0200
From: Florian Eckert <fe@dev.tdt.de>
To: Openwrt Devel <openwrt-devel@lists.openwrt.org>
Message-ID: <ef62f1e9dbd3d444557a47d687587bd6@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_062351_023137_4A047B70 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] Conversion issue in lua ubus binding
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
Cc: "alin.nastac@gmail.com jo@mein.io" <Eckert.Florian@googlemail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Community,

I have recently discovered that there is a conversion problem with the 
ubus lua binding.
I think it is due to the following commit [1] from the ubus project.
Can anyone confirm this?

I have a lua program that loads the json object from ubus and extracts a 
value.
On a 32 bit system (lantiq_xrx200) every works as expected, but for the 
64 bit system (x86_64)
I get for the value -71 the value 18446744073709552000.
If I do an ubus call on the shell the value on x86_64 and lantiq_xrx200 
looks the same value -71 which is the correct one.
So I think it has to do with the conversion in the ubus lua binding.

Regards

Florian


[1] 
https://git.openwrt.org/?p=project/ubus.git;a=commitdiff;h=171469e3138cce191892e20b6fd35b52c9368064

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
