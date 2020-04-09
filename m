Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91B61A3971
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 19:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qp7HN0dBpvZwC+sJkJilro2zkwRbL8shhxDRAIUS8No=; b=MdlQWrlxxS8Yil
	WiOqpvN2uBy1IwR7TO0U43fgojU+45juVG9ssxpAnmIryur8/q9m5xXSgCg7L+S0hYijJnNYo9U1O
	99ypm2UPQH5M5+r+kaorwsZVynyZa2e+fObyRcaI/T3KSNi3lLgvhF9kEgzK+H/tYhJZI1efVNopB
	PwFOVfhCx/dBCaujVKPDBJez24BqQpnaySInyHvLdCJmOiNL0k3E07Rx/b8BUB38rsw+/4IkJcmG1
	CE66Wfx9tGHzqFc7toTnrhkovCZfi28uAQmeigJsEhOAzy74eU85MjkKVUWct/l8PPRnjDCXNhqH8
	aDHSTNRIxsVAwqrEBJPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbQc-0003r0-SU; Thu, 09 Apr 2020 17:57:26 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbQS-0003pp-Jj
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 17:57:17 +0000
Received: by mail-wr1-x431.google.com with SMTP id g3so12961447wrx.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 Apr 2020 10:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=nFvafEFUKh7agT2MAr/2QlpiMCzVoCsVqvL9ZUsGf6g=;
 b=nAnqfnBnqvgxQ/7GkqNT56Buq2y2gUnm4k6KNAMZZJt5GScPThmQ4kxXBj/pIDkzMY
 6Q2zgKKYU49fCBEs1unj9PTWM3nR2xI9jgeyXV4pD0yV2koaEIkHyWNGRy28lbiH4gC1
 Se1L2QW2Sz5MED8xJ/hSmkR0YXlOhibv/mDaskR7ifpWcOLzhtYxsla1zd1xd3Xto/rX
 u4PB4ty4IDhu/MPc2waPrUu1Hp4y/LM/ChXB5nDFvun17tUGbw3uRUc4D6Qeik531ofq
 JdwZrvpCOhG1FUP0jKbqWJ41cihlU2w3OgSfg2uxGhNEWpg40AOSlxq21/dFKmt4mEhU
 P8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=nFvafEFUKh7agT2MAr/2QlpiMCzVoCsVqvL9ZUsGf6g=;
 b=pQvB/aw7QH5zzm9kPCKdmpa+I28dvZ1SqBtqpQMdDnQuZhqru83Jh+IiOVQKZpb2c1
 7JUBO4K9MOQcBnRTo5bvuv9AIEdmuUf+9fDpsjbWCqXCr3t7rtggkvYdk3rzqZQigcj/
 ZHoAlFwgqfUYLwnimHSJnsVilnT1hFX1lIDDIXUjDz+CQY5RkhD+n7o/FYD2Lm9m0z19
 AyIDNJbk1j9xdpYG12nLTmvCgUeLaQUt4Xvjs5qNZXLIeA/dA8iiRmViE7Z3gGK/FgWK
 EDpoVQnYPq9heWqKlriQiXof7jCeKvoNKdu3CVhaim7/1RcBfapVczU0PO9H9LNmCOdC
 ROeg==
X-Gm-Message-State: AGi0PuYXdGTRcDeV7DcsqwfjYCA59wphgkFDXXBB6CZMY24z7ydroTCg
 O1gPRHlOpJMZ1mzSUuSL8JlG7UTi
X-Google-Smtp-Source: APiQypK75AIu46LAb4WXFmTReowjF1AKBWpRj/+RV7W7zBK8PE0DkfhlJk5bMK5TDrY4BkkhOt9AZA==
X-Received: by 2002:adf:f34e:: with SMTP id e14mr376872wrp.80.1586455033985;
 Thu, 09 Apr 2020 10:57:13 -0700 (PDT)
Received: from eeeinsomma (host40-255-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.255.40])
 by smtp.gmail.com with ESMTPSA id 138sm4781662wmb.14.2020.04.09.10.57.12
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:57:13 -0700 (PDT)
Date: Thu, 9 Apr 2020 19:57:11 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.22.413.2004091956330.806@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105716_661569_63C66843 
X-CRM114-Status: UNSURE (   3.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Master not booting on R6220
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

Hello!! It seems master won't boot in R6220, using images built by buildbot (kernel 5.4.28).

Thanks for your work!!

Enrico

Enrico Mioso
Personal Phone Number: +39 3807096934
Tox ID is:
7C593F402A3C8632D87AB4B948D492294C39A6A614464ECF843CA3429FB023284180472C7475

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
