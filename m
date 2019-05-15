Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A691F635
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 16:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rcqi6pPu+GWhLu6HnnvYSoVpt98XrMSVjxwlX1lZcsc=; b=o8wHhKDOIDFrOi
	4T2WO+jAWaSzV61Q+UdgDMqrQIDpE1QSuB9h+70baEVoYNHCbhqEZOumPL7cSnsHsLtftBXDewc73
	KYjbL8dUFl7u62+e/Sivh4TCJdfh4JsFE3NvIz4iBhflJ3dRi3jx4H7Qg0o0pWVMxTZK+iKzKQxRI
	ltxyFfEcaEN/LgyNmxOPHRQJMnA1o+QvTm9xeOm3Tm+PAp+ccZsl1AYCvDp+ICgqkUPfXttQwiAWE
	sh8ARZ+xZbThrm/rd3P3rn5p/vjEdBUPHTPXnuOHpxpwzaw0zakKIFOzqiAs3AQD4jjrvNgNsD10J
	Vkk4JJ5447tpiGO0O3ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuat-0000P8-Rm; Wed, 15 May 2019 14:09:19 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuao-0000On-NE
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 14:09:16 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FE96hi037896
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 16:09:06 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8A63C34DF;
 Wed, 15 May 2019 16:09:03 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 14958373;
 Wed, 15 May 2019 16:09:02 +0200 (CEST)
Date: Wed, 15 May 2019 16:09:02 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Danzberger <daniel@dd-wrt.com>
Message-ID: <20190515140902.GA34240@meh.true.cz>
References: <20190217123104.11376-1-daniel@dd-wrt.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190217123104.11376-1-daniel@dd-wrt.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_070915_070805_6B7F78D2 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] mt7621: add kexec smp shutdown patch.
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Daniel Danzberger <daniel@dd-wrt.com> [2019-02-17 13:31:04]:

Hi,

> This patch shuts down all secondary cpus before executing machine_kexec.
> This avoids paging errors and random hangups when doing kexec.

this looks like a material for upstream submission, so please take it through
upstream and then backport it to OpenWrt. Thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
