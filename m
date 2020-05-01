Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB731C1A4E
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 18:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:Content-ID:
	MIME-Version:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QNzh9O3PQrcn7xnT2F75i6Iyr7Jc8OtGweQ5mHTQFvo=; b=TJfpHfI/ddSZhB
	SZb//pDo1TBJoPYK/VnP2+Qvxp4gRdeCE6RERG8C1YEPfCZj/QqqXWw5wi+9DNm6oXTKEaMSMsQjh
	Dh1yTABgdpCI3GXBQ6fyjIaZR2FzmsuoWll6Dj7R1CmAV/92ls1N2M45q/uETKWvYgy7MHiCUNE4w
	g4nlExJ+rLc0pPvN2NG37ScMPGA2KA86Gx6hgKhFc+3yZnl1YwvLmmEXECENDEs4WEinNFywvYAXB
	o+zCrTWPd4dlJLaIycV5JFOsIPf0DzYTK0HHhUfqSt6isM0E094zeD520SyUjHYkUAKCP+tzjndsG
	l3J3Iaa6nUl0OSaOl7rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUY9f-0000WV-4e; Fri, 01 May 2020 16:04:47 +0000
Received: from tuna.sandelman.ca ([2607:f0b0:f:3:216:3eff:fe7c:d1f3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUY9Y-0000UM-EJ
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 16:04:42 +0000
Received: from sandelman.ca (obiwan.sandelman.ca [IPv6:2607:f0b0:f:2::247])
 by tuna.sandelman.ca (Postfix) with ESMTP id 3559C3897A
 for <openwrt-devel@lists.openwrt.org>; Fri,  1 May 2020 12:01:19 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 41291B6F
 for <openwrt-devel@lists.openwrt.org>; Fri,  1 May 2020 12:03:14 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Attribution: mcr
X-Mailer: MH-E 8.6; nmh 1.7+dev; GNU Emacs 25.1.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Content-ID: <27521.1588348994.1@localhost>
Date: Fri, 01 May 2020 12:03:14 -0400
Message-ID: <27522.1588348994@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_090440_724939_7B116F62 
X-CRM114-Status: UNSURE (   5.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2607:f0b0:f:3:216:3eff:fe7c:d1f3 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] building python3 packages outside of lang/python3
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

hi,
python packages include ../python3-package.mk, and pypi.mk

But I can't do that from my own feed directory.
I don't want to copy the file!!

Is there a relative path that would get me to feeds/packages/lang/python3?
I tried the whole thing, but that didn't work.

I settled on:
include $(INCLUDE_DIR)/../feeds/packages/lang/python/python3-package.mk

which I found ugly, but it worked.

--
]               Never tell me the odds!                 | ipv6 mesh networks [
]   Michael Richardson, Sandelman Software Works        |    IoT architect   [
]     mcr@sandelman.ca  http://www.sandelman.ca/        |   ruby on rails    [


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
