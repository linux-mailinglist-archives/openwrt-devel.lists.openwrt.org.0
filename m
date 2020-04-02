Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFF319BB79
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 08:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JNKb9Q4YyKtcG8+vqn8VRXbDUh1n3gRapKYX3L+pm4Q=; b=FL9hXU0ICJroH7DOi0cYrr4U5
	UdP03wrPTm7aHSvzP55d6f+AMoZ+y8Me96tpED5yTDm6rrDInM0khE+YbOZzFoRZ8QlfUz5UgOdK3
	aw61KYBY1XNOGIGowLA5FIwpwvOMTLmUsWyDdZ1TcBn0ttcumS9xkqFDQIWX0MIP21kCLyyU9weUH
	iVFp2J6PfGQMxNtt0vwbU8V9sPi2QHWcopEJVHe9h3KwFhsbskppP81dXC0LHPD3Nk6NGG1w85T4H
	0EGE742Rmjhexp7ssj+a6kjjYncDwgDLkq6b+x/KMJ/MueOgWEUthFgnUrQhKzp9NVdl+SbCmvWRR
	9tPEZdy9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJsti-00009h-UN; Thu, 02 Apr 2020 06:00:14 +0000
Received: from welho-filter3.welho.com ([83.102.41.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJsta-0006eJ-1C
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 06:00:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter3.welho.com (Postfix) with ESMTP id 2AB811F35;
 Thu,  2 Apr 2020 09:00:00 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter3.welho.com [::ffff:83.102.41.25]) (amavisd-new,
 port 10024)
 with ESMTP id qmJkBD8O0XFK; Thu,  2 Apr 2020 08:59:59 +0300 (EEST)
Received: from [192.168.1.180] (87-100-206-162.bb.dnainternet.fi
 [87.100.206.162])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 4A30F292;
 Thu,  2 Apr 2020 08:59:57 +0300 (EEST)
To: openwrt-devel@lists.openwrt.org
References: <CAEKKVUjR2ZWeSm74CJCOvUWTkFqUQ1RjvLgLeJMWoo21FNzWBQ@mail.gmail.com>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <13f8b709-4995-ba40-bbc3-20d7d09249cb@iki.fi>
Date: Thu, 2 Apr 2020 08:59:57 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101
 Thunderbird/75.0
MIME-Version: 1.0
In-Reply-To: <CAEKKVUjR2ZWeSm74CJCOvUWTkFqUQ1RjvLgLeJMWoo21FNzWBQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_230006_247376_C076E57E 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.25 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Ath10k: How is the interface mac address set?
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
Cc: kevin.mahoney@zenotec.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kevin Mahoney wrote at Wed Apr 1 20:15:21 PDT 2020:

 > I'm working with an IPQ8065 based board with dual QCA9984s. I have it up 
and running but the wireless interfaces mac address is garbage.
 > "00:03:7f:12:34:56" to be exact. I haven't been able to find the magic 
that reads and sets the proper address from non-volatile memory. Any pointers?


The mac addresses are set in the firmware load hotplug script. See here for 
IPQ8065 based R7800 with QCA9984:

https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata;h=bb505d642fee300f5c1cab40df9919d7a453345c;hb=HEAD#l26




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
