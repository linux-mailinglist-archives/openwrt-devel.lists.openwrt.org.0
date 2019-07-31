Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D58D7C2B6
	for <lists+openwrt-devel@lfdr.de>; Wed, 31 Jul 2019 15:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zqB1PsqRaowhzZIYK+h812rFX84WfTfrRtYAjVAfyjo=; b=OCc8e9YuD/2hIZ
	i2AzCkOW2IpNoojb21/VbINcddxipIA6rC3Ju6RP0Jz83M6PoO/KQEPbjloaFHSI+DJs1IeMrJM8I
	knWUktIdX9j8R3jR3kf6GCnCWG7mZTma41z0lLJxbpTFYZHFwJ8VeMipoa2WMvrV9Oe9vHVEyLKUM
	vBCwpiWlYni78wviLychgwBZEah4pLo/vgtLp+7sEbVqDtHqkn09q6tL8XRddlpitlLIWS16sdWj8
	A8IFvRg3LojJ482X6JVcMmOhBH7NpePvveMz7G9ME7TKNySmJd7HXjEwghXAJd+6+BFROqnzDw2sI
	dMXqAn61T2hSQ5cY3bSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoIl-0003oX-9a; Wed, 31 Jul 2019 13:05:55 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoIb-0003mb-NW
 for openwrt-devel@lists.openwrt.org; Wed, 31 Jul 2019 13:05:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:Date:Message-Id:Subject:Mime-Version:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ggwsekD45ZvdlKJ1bB6DR+l+CQ7Klymt7dlVKXvfnlw=; b=m375XO/ZpDXil0uqqWiBZJUQ7T
 YvzwoxYJZShB3SXnYuM165g8uzxQuCJGgLemSDxk0BHEliDc3FdFYFWyAk2ja4W/hezXpnj1pZMtN
 EJKcBZKnnkWjbdy//I41TSyAnk7/bHmHzVdUFN7UHxRII5z3quJNFAfocDEa/gYdZ46OoLnMAvKU+
 Gr74LiX2vcUULDdD/rjILlhPWqxr3FtvrXqKDf7KkpfVT+3jMy12thjYLp81qHPA/gFbNNk4pNEoU
 eXzREBmwCwvhL3ESrJbt0NmeGLX7TFtWZUa7LFCTjVZABeRwMftk2kZQYBV7jzIhqEYB8WzEGhU8r
 1pY+tUZA==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:50213
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <por@oranjevos.nl>) id 1hsoIa-000fCv-C6
 for openwrt-devel@lists.openwrt.org; Wed, 31 Jul 2019 15:05:44 +0200
From: Paul Oranje <por@oranjevos.nl>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <675C4221-5F3B-4440-A2A8-B63C92904ED3@oranjevos.nl>
Date: Wed, 31 Jul 2019 15:05:37 +0200
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_060545_924891_D3AB32B3 
X-CRM114-Status: UNSURE (   3.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] GitHub starts blocking developers in countries
 facing US trade sanctions
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

LWN posted an article with the above title [1] that refers itself to an article on ZDNet [2]. 

[1] https://lwn.net/Articles/794752/
[2] https://www.zdnet.com/article/github-starts-blocking-developers-in-countries-facing-us-trade-sanctions/


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
