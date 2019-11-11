Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE30F82B3
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 23:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/0HyTA/mZMtI96SwSLizLjuyP7rUXyrEl+++y0yIgvs=; b=OKGLxRAzJDWuKni08lucTgIlt
	HlTIXeb0l9ormRz+oBvGPOn8N+oY9nuUVlgUBaauDhllLjJKDeB5aHw9feVTCWDqqnSWCa91av3nD
	LbsCHhgi6y3fNScz2/4Ca/hrhwmNivm9o6wyirCb3Wmdf+7iS7C9cfIeA0NpYPw5AMLiiZAJRomZ4
	FEQFIlvWZ5Wdv82LQ5ihUB4yZDwl9epnrKxSfMaQT4/tqlnIsFEXVdXMbMvcTHT/ipd0ULuL85CHQ
	amdE0nby8HaibW1V1Rht+GLf3xvCm7xYb6AgZOTyD+I/InV8Mml/UiXd73YrLpCEf2r9YMZXaAsQB
	QVUDMDr1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUHlP-0001jd-VX; Mon, 11 Nov 2019 22:02:23 +0000
Received: from li825-139.members.linode.com ([104.237.157.139]
 helo=smtp.factglobal.ca)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUHlJ-0001ip-7i
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 22:02:18 +0000
Received: from [192.168.0.187] (modemcable184.72-21-96.mc.videotron.ca
 [96.21.72.184])
 by smtp.factglobal.ca (Postfix) with ESMTPSA id 5A15D7B950
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 22:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kryma.net; s=mail;
 t=1573509735; bh=yj08fhk4SlI/iy6Pum0akc3rwVjCM//2/HFabjQLQno=;
 h=From:Subject:To:References:Date:In-Reply-To:From;
 b=O0Fz4jy4AoFVDelLuW6wy3wFPtfvt747wqIBk/x1BmLB43H2YGjeQ4xcpKLR9QzGQ
 /AfkxzjYhLgG7awy+Jh7TmI7aSoPsB0U38+bEMjvLVwNspkKe5vO3Lf/gnPCPOaBm5
 yAF/ovArCwqJxtviMMnTdAOemS0Nib6IEsxBGFTY=
From: Kryma <admin@kryma.net>
To: openwrt-devel@lists.openwrt.org
References: <20191111154224.1476-1-admin@kryma.net>
 <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>
 <b8afe62e-867f-2d60-2c0a-08d01ebd9fa4@guifi.net>
Message-ID: <025a227a-d897-e71c-3193-ef3776ffec39@kryma.net>
Date: Mon, 11 Nov 2019 17:02:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b8afe62e-867f-2d60-2c0a-08d01ebd9fa4@guifi.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_140217_338995_2C501F59 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for COMFAST CF-E130N
 v2
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

Hi,

> That's wrong. You have 0x7d0000, not 0xfd0000 ...

There seems to be some discrepancy, possibly v1 vs v2. The 
specifications on the website and the partitioning seem to imply a 8MB 
image size - however, U-boot bootloader and the sum of MTD block sizes 
gives us 16MB. Unsure, I tried both 8000 and 16192. Both seem to work 
well, save for some I/O errors when writing files to homedir with both. 
Not sure what that implies, but assuming 16MB as size all that given.

> Will this work without a defined gpio?

Could you elaborate?


The rest seem straightforward to me, I will be happy to fix them in the 
next version.


Closing thought, the aforementioned I/O errors. Parts of the filesystem 
seem to corrupt on occasion on my test device. I will look more into if 
it's a hardware issue, but for now are there any possible 
software/config causes you can think of?

Thanks much,

P. B.







_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
