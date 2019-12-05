Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4446E1147E8
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Dec 2019 21:01:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HkCLjRO6M2ZGyprSOgXOhy6SH+F57rtsf4gMiKvwnj8=; b=SxEgeonqewEo0GjQY6oMT5I5+s
	wecsEEnwqrDGft08GnvSWEL1tCgLWGwMLltkU4JZQN1XBc5OWbjQeCF2vUZCAZvycz8YHbnLyklUi
	+/9i8hUWIuyXwN5QN+UbkEWb0PSYCggNouDPJlcYIynq5dJ1apGL/i2VaLaICezq+llrnyZkLlWKU
	0dE/P9UMe8AZLcLijbJa1O4y7C1Wx3+Rnjak11B9j3wYGQs5UuDu/dxKmOu71HgyWchPUQ1UjSqP6
	NeqjW+2V9d+HIaaf64JWcaAmhHli9rccomTJNEs5ulZMgmscgtnkqNWBaCL/S00MqxDbKkodTa15Y
	rmInd/og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxJ6-0001HV-Sd; Thu, 05 Dec 2019 20:01:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxIy-0001FI-1f
 for openwrt-devel@lists.openwrt.org; Thu, 05 Dec 2019 20:00:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 581D44E1A;
 Thu,  5 Dec 2019 21:00:46 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4d1c9603;
 Thu, 5 Dec 2019 21:00:36 +0100 (CET)
Date: Thu, 5 Dec 2019 21:00:36 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Joe Ayers <joe@ayerscasa.com>
Message-ID: <20191205200036.GD71465@meh.true.cz>
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
 <20191203143434.GF8181@meh.true.cz>
 <CAALvt2POG3isiKH+2aHjSGRoh-+HADtamD9O2VLOCKO=73byGw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAALvt2POG3isiKH+2aHjSGRoh-+HADtamD9O2VLOCKO=73byGw@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_120052_235049_4A369228 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] ath10k memory leak on 19.07 branch and mikrotik
 RB952Ui-5ac2nD?
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Joe Ayers <joe@ayerscasa.com> [2019-12-05 10:17:22]:

> Possibly the same symptoms don't exist on 128MB RAM devices. 

Like there is some if condition, which is doing some nasty things on 64M
devices? I admit, that I don't have ath10k-ct source code under my pillow, but
it doesn't make much sense to me.

> Comparable results between above and my 64MB device.   However, if the
> sleep time is extended the consumption is more

Ok, I'll let it run overnight with 120s sleep in between.

> I suspect this is not the intended behavior.

No its not and it's even strange, that I'm not seeing it here if it should
happen in the "default setup". Maybe its because:

1. You're using custom image (I'm using official prebuilt images)
2. You're not providing all the steps needed to reproduce the issue
3. I've way different hardware

Every detail could make huge difference.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
