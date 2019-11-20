Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F3B103BB2
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 14:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V7+oyO03o5RoGn9YizkpribMylAPNv3zmv3BIwB+tYY=; b=j7ZcFVEj7MoxCZR6E1kVNIDUEs
	opEvof+6zO2YcIWZOwa5Eg35fAimxl8Rp4d8I2KABW5Cc9Wt0tcbAVwThyrc2Wmit8FGJzlQ4d3k8
	KNreDbQ+MB3oWLc8Hg6TlJ/jAQoP75Qb0wU4x/APmILkNHk4jbquKtFkGLx6XdQUM4XITs/Cy/0uk
	8OmqU8zm/y+7oyMrOnPybjZuTceqWKQFegyXzUK/Bg76OrmMyAjkPf+LlSkRElx6mumQRIMdR882S
	xtXTSLpGwZ7fG4jXY8+RNTP9Tknjt5GxEIVfMFOz9TWejY5347pYybhTEgHBkF4jFUuGp8+1SB+Qx
	zpiFaZXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQAL-0001yt-UD; Wed, 20 Nov 2019 13:37:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQAC-0001yD-Ab
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 13:36:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E0D874BB4;
 Wed, 20 Nov 2019 14:36:54 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c72dea3f;
 Wed, 20 Nov 2019 14:36:45 +0100 (CET)
Date: Wed, 20 Nov 2019 14:36:45 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jonas Gorski <jonas.gorski@gmail.com>
Message-ID: <20191120133645.GE52387@meh.true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
 <20191120115926.23272-2-ynezz@true.cz>
 <CAOiHx=kfTEjmFwozqhb_aFcRTSxXj7ynkoVzT=gDH-QZi035JQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOiHx=kfTEjmFwozqhb_aFcRTSxXj7ynkoVzT=gDH-QZi035JQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_053656_521366_F6F9C678 
X-CRM114-Status: UNSURE (   5.75  )
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
Subject: Re: [OpenWrt-Devel] [PATCH libubox 1/9] enable extra compiler checks
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jonas Gorski <jonas.gorski@gmail.com> [2019-11-20 14:29:50]:

Hi,

> Does it still compile when only applying this patch? If not, you need
> to move it to after fixing all issues it now warns about (and I guess
> errors), to keep bisectability.

good point, thanks. I've reordered the commits.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
