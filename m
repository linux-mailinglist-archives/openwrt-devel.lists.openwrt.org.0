Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C4C141D2B
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 10:56:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BzRIHtMS7VtMvgydnq1q9wlIOPjG1mEYpii/BTwuW9s=; b=Yo5OTpBN4Boc9L
	tpT/rUrzxe2zPQcwdzhLjcojeeek4Eq/Xzs1cS68fGvKpkmJSptRxsesCWBNQy3k1kzKDPBbhNAvt
	v2UP7JUa3AJsdWLaLfHh6bgP5MSPykdnWNWqyRXrQ9oG88SAtyv5Z0+uFWlckqNpWz4Tt2V5hoP5Q
	9vAEiprc3nQ3+FYDq2Ux/IqKds3XirtWj+oZ/U84Nk1/NWYoKOJ353wT7xOJis5rnMdca7QdcEl7H
	ZblGaDC6KALMIHCE2VhJBcOnWRCAPd0sY6En3/QDsuD8BJY0aLc95KKgpKDe8KRDyxTHEexza4WiZ
	RE966HStknxBpNeIx0og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it7Jc-0000c9-G5; Sun, 19 Jan 2020 09:56:20 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it7JP-0000bW-OY
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 09:56:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id 073E021301;
 Sun, 19 Jan 2020 11:55:58 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id EIRDfToflN8M; Sun, 19 Jan 2020 11:55:54 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 54B5D7A;
 Sun, 19 Jan 2020 11:55:52 +0200 (EET)
To: Christian Lamparter <chunkeey@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <1901679f-8a8c-809f-e9a4-072831c4ba49@iki.fi>
Date: Sun, 19 Jan 2020 11:55:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101
 Thunderbird/73.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_015607_962376_B70400F5 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] GNU libtool 2.4.0 bump to 2.4.2 ?
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

I have noticed that Christian has had the libtool 2.4.2 version bump in his 
staging repo since March 2019. I assume that it has caused no trouble for him 
so far, so I just wonder if it should be pushed to the main repo at some point?

https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commitdiff;h=a0e022309d0fcf8e7f47f4044bf3ae79d5cdd6eb;hp=7bfd053e004dde870fc531ff70018bc1c14dca20


Of the build tools we use, our version of GNU libtool (= "autoreconf" in our 
Makefiles) is by far the most antiqued tool that we still use. The currently 
used version 2.4.0 dates back to 2010. Bumping it up to 2.4.2 would advance 
it by one year to 2011, but it would still be quite antique.

I looked into the version bump work myself three years ago, but as there has 
been a major structure change after 2.4.2, I threw the towel in. Bumping it 
further from 2.4.2 to 2.4.6(?) requires some actual understanding of the 
Linux library environment and the intention of our OpenWrt specific 
cross-compile targeting patches for libtool.

I just fear that we will sooner of later get hit by the usage of a decade old 
tool as the related build tools and paradigms evolve. Bumping it up to 2.4.2 
might be the first step, but sooner or later somebody with relevant skills 
should look into getting the version modernized.




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
