Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73923D1B77
	for <lists+openwrt-devel@lfdr.de>; Thu, 10 Oct 2019 00:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0rK3LzG2I+CuS7F7LZ/Wy2NINoEV0RRX99ClsW6vQAo=; b=tRivmevD9qk7au
	WHsZt1mrVf30taIDZxRjv5n/64g7KJ0IpUgsk2IEzTLwnn6y+uPKad35reGyJ/JG0xzIqbqzd9vDc
	7N99uv8M4iYNKl6u4FOePUyAFR3hRGWVLL6XOcixCH+yW/0TfGKCKFtNUkw8Tdv/wEOfq8/3fbh5D
	YEP4KtciJIfr9na8mg/T2SL/71n6xm7hgfoc+6NGoqz+4n+31Z46xvvJnECBJGL6rIsk025s8CZfd
	lTi/l9FlbAg7dBrzwfmkxzBAp04jX0vlJ1nTqlKRTk3z8j8gCpR9pLnQI8wLB9D60Zr+GZmlA0Q9y
	ZTFC4lJgsqOpaPCWce0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKDi-0006Ni-6L; Wed, 09 Oct 2019 22:14:10 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKDa-0006DF-6n
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 22:14:04 +0000
Received: from [128.171.10.79] (dhcp-grp2-01.ics.hawaii.edu [128.171.10.79])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 8DA9320000B
 for <openwrt-devel@lists.openwrt.org>; Wed,  9 Oct 2019 22:13:45 +0000 (UTC)
To: openwrt-devel@lists.openwrt.org
From: Paul Spooren <mail@aparcar.org>
Message-ID: <bb71ccb2-6c08-9d62-5de5-fbe95edc135e@aparcar.org>
Date: Wed, 9 Oct 2019 12:13:43 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_151402_412354_F619BE7C 
X-CRM114-Status: UNSURE (   5.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] 19.07: backport of reproducibility patches
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi team,

there are two recent patches introducing reproducibility of most 
packages and firmware images. Applying them to 19.07 would only change 
timestamps and shorten debug information (of buildpath), therefore 
fairly secure to merge.

Please consider backporting:

4ed356fa71 kernel.mk: add KCFLAGS to make kmods reproducible

4791afa734 kernel-defaults: ensure SOURCE_DATE_EPOCH on /init

Best,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
