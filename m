Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDDD895DB
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 05:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BnLBI9pqRvmNi39C2idYzvdI6RSJsi+nmnHEJr32TqY=; b=dPSliYnmpqhXAu
	cykGyYA0sSL71MPmRaUPFDIgxnz4kKBWnjIXezyNMEGRNJ6mvPAW9Z1NOgvOGpmtoQGifsG19RSAi
	GqEX8qo30qOMCR7PFj99rHuO2A6cXkdkSsOgooYCWhgoOFnre0MkH+8TGB8RmEUkvvAydqduFK4Of
	fUd0ZoCMt9ys4bTMn1F1Eb3UP67BQD2kyJ+u4IrfDGdeRlI/tDUwjjEtxRg0KiRRmaLJ50p9h/xnc
	gukpkHSkxhdhYVpec5LjGtrWBQ9ZN8Bdum0Fn5rDFoqTQAzLkjbj9gBxAXQIFkKV3mNtWr83JDs06
	BthaVmo5jvwuByI1xyvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx1JR-0002En-MH; Mon, 12 Aug 2019 03:48:02 +0000
Received: from out-24.smtp.github.com ([192.30.252.207])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx1JC-0002EG-2i
 for lede-dev@lists.infradead.org; Mon, 12 Aug 2019 03:47:47 +0000
Date: Sun, 11 Aug 2019 20:47:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1565581663;
 bh=RUSKVo1D+Oy3ORSabpGoGaI4geJVOywjt7d8BvSCtuI=;
 h=Date:From:To:Subject:From;
 b=HAiXoAxZDbeAVb/klLn0stRsImtqH4RvGUMQfSdxq2LF7FOtEdeo6Lz6t0RVijFzj
 SnEL/kVFChqEu3Q2hXA0xIb5iHjOuYdZLlMURDnlcy7XCjR6Xlh8NiwoU8A2dnnprL
 qKvOvq0Jye1Z+QLEsZOJYusS0JZoHduRoH26o94o=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/5c698c-75e9cb@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_204746_189416_1ABC6775 
X-CRM114-Status: UNSURE (   1.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.207 listed in list.dnswl.org]
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 75e9cb: This week's
 update
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

  Branch: refs/heads/master
  Home:   https://github.com/sdwalker/sdwalker.github.io
  Commit: 75e9cb4d27fc659d27ccfa6f47f802dd922a0552
      https://github.com/sdwalker/sdwalker.github.io/commit/75e9cb4d27fc659d27ccfa6f47f802dd922a0552
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-08-11 (Sun, 11 Aug 2019)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
