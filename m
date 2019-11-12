Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB2FF935D
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 15:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ole+CFCuYSIbTtWmFW3Z9cf2qCTdSMeYgR5J6gYOse0=; b=JO2XOj3nTnUYm/KCFi2ksD2YWz
	h+HLmhE/2R+E9Crsfx4mV2ONLQ/3GOmWRd52L1KyxVJgBLqgocjnFGv+4b2IVWHwYFVahxjz7QOnR
	De9P4EP6qrm3phQeBXGj8NoXGSuucfaeGTpojX4+ahCZpPi3/AGyxcPQCA/SLl44x3U6asqhzjk2O
	p2nUJWSvJZbNy6rXgULF4zffpnfI42DeBApjMZLxhqD9RdK9PmMOE4JXg8zMIdRiiU1wHU4lpPFm/
	mgW4g3+KwY3fLftuqfzI7wG6bqF0It9Zv6zrg1NYfZu5DNG6/TvAQmt/3AV4yz2H3SoObMC1KQ4es
	WgFQOjUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXXw-0001YF-MP; Tue, 12 Nov 2019 14:53:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXXb-0001Pz-V9
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 14:53:13 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 941B33457
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 15:53:09 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ebc368e1
 for <openwrt-devel@lists.openwrt.org>;
 Tue, 12 Nov 2019 15:52:59 +0100 (CET)
Date: Tue, 12 Nov 2019 15:52:59 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <20191112145259.GA30658@meh.true.cz>
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
 <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
 <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>
 <20191030221611.5ac4b262@mir>
 <5f0481be-07fd-b88b-ba46-129649d3f33a@marcant.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f0481be-07fd-b88b-ba46-129649d3f33a@marcant.net>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_065312_155286_618BE962 
X-CRM114-Status: UNSURE (   4.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

so my oppinion is, that I'm fine with v5.4 as next kernel and it seems
sensible to have 20.01 still on v4.19 and 20.07 based on v5.4.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
