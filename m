Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D423BD70CD
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 10:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mplg3+yBvrLl9xaZe/zpNmtw/PXvRce1vB5d8axcOew=; b=jrjVhOsF7+KHsq
	HrFdAjndVLBokMGfoyldDSNDynqwqjOO+ljxXylSGJxwYPrzDqKZftPzrEzEcF/uXDixgJBBRIpDO
	c/rNj85NWwRYzB/78p7mS05u9eY86gD4GeHwLf28cqQO8Pa1zIL8cF8flciX41cFCl/3op9Z5LzhZ
	fyNE6lhcjmKRKWkVaOOHJep9yH6h80+0SEWFDtmzOQqd9tM5yYwsdYJifAEkq6pgZLzwJxv9P1qL9
	4Jfx2A9faxsqmwxdMTxLUDvnR8ilSVq/yPU2I9FB0l4AF6P5bo/R/O9DmOBmmH+VsSO4ylEWF5Obf
	EP3aMclEftThnyG76NOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKHwP-0006JW-8w; Tue, 15 Oct 2019 08:12:25 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKHwI-0006J8-DZ
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 08:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LUyEz6GA7AkGee12XEnQOmLpASsTVp/4Xuu1us0mc2c=; b=kw80SgeUWDX296wfTvWzCrqCNp
 OHO8PpGpLRvSecIjxfFwuG7HuuuB/qIH2Tp+b7urxOFwvdbGo2HYkUVB2vXR3n34wlbSN3g1bjG+3
 s6T7ppsmMBSkj5MB2Tg6JkX+U1OT/7yDNn0tSfH0szmVyVAq3Km4qtE0BejM9yY4nq1KjR7qxZAid
 TfFmPWNL9iulGCxabczAEB8gVot4JFk/irylBJzG3GDXsZFV68r5AZQxmKmajVPqEzRyi849KcCgJ
 h4dN6y1H54LlvQvrBCOblIFH5mzZeJ+PyoCdSsC3Sn9wpCAbIYpS4OI2h+ghTMkPqgRWAdint3Bp8
 9MV3y8fg==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:60101
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.2) (envelope-from <por@oranjevos.nl>)
 id 1iKHwD-003Roj-Lx; Tue, 15 Oct 2019 10:12:13 +0200
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <080086a1-b4dc-1ef3-2bc5-cafea5640421@gmail.com>
Date: Tue, 15 Oct 2019 10:12:03 +0200
Message-Id: <49128945-A6B3-49E0-BCD0-79A3018BE488@oranjevos.nl>
References: <20191008010225.8822-1-rosenp@gmail.com>
 <944A6623-FEF1-4AC9-9A1E-B7D3566CF8A9@oranjevos.nl>
 <080086a1-b4dc-1ef3-2bc5-cafea5640421@gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-Mailer: Apple Mail (2.3594.4.19)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_011218_603086_D38BE0B0 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/8] ncurses: add cygwin compatibility
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



> Op 8 okt. 2019, om 14:57 heeft Alberto Bursi <bobafetthotmail@gmail.com> het volgende geschreven:
> ...
> Yeah it seems these patches are for using the build system with cygwin. I think there should be more explanation on why you want that.

Dear Rosen, could you please answer to what purpose you summitted this set of patches ?
Regards,
Paul
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
