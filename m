Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6AF790D5
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 18:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oqgIqLSpyqK54e5eTWvcmSR7Gsmd1d75QAFCiPIzYtA=; b=mWG
	opViKgnoyNv/ftcf3X2pXfaSNKaPL/6qPoDcm51eNdVphsixeFaKWBHK4FEaa73vniwodocqW4LZG
	6WIZ9GVpSJnKNXZuSwlFW+wJZLEShBMxDjFI36wrWBnEJSOxMxPYAyHDhMxzQ7uukHjSxc65gMdFy
	51Lefq/cdSRZad/zz2N8l6zJIvZzxxC678GarMYS2KbwtAB06UnFapNMRV5kkz98ffNKlR3V3+zGx
	9gy+XvHN9aK7DDsv/hTzo8u27KXIZ6pyyYl9sFnefN+BHXkQvTfqXr/8HsUR4qtTC0R6+hbW1eZCV
	wtks+fyDQiX6SvNwepPELemecBCTmiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8WV-0002Lx-Gi; Mon, 29 Jul 2019 16:29:19 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8Ve-00023T-58
 for openwrt-devel@lists.openwrt.org; Mon, 29 Jul 2019 16:28:27 +0000
Received: by mail-io1-xd33.google.com with SMTP id e20so90950576iob.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 29 Jul 2019 09:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=YnFi8lfSEot31S+K6hkZDPPMYZ2g+AuEr5jkcPEGKd8=;
 b=ci3Plx2/jJ5iiSqLfAfLJMSjJyT0QbC+YyI5KPmmdnkxwDiLmjkpkLffFbgAN7Zbn1
 pfBSfN1iv/W0/72H5EdCA/6BKJqdIwyxK15L8L7A+QbShHYdW5Sz/Jx0i3iAq7KCnZtv
 9cKM6ytRTT2amo0MgXFNtAMz3bNZhKMMjjGwLqeO/hgaI3SgTtFuY/3IwJQIY/5aaW7N
 F/hxlZ5icuVNJ+Qtr7DSNIwPgK9ayk61K6PAWGmZQUvAdBX+s6gjXX1Dm43GGiRghUco
 fU09UJ4uhrvP6DX0uCtpCcVwA5c8DqwekHVRMIsQX+HLF671YhGuqcR+wZaLWIzB/LOR
 Jjvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=YnFi8lfSEot31S+K6hkZDPPMYZ2g+AuEr5jkcPEGKd8=;
 b=NWU180wr0z5PZG7UHSw5omnc+V+6sHbhBVr1f28DwIAmcvGDgmGbMkSgXyK/XSkupP
 dwy3avXwwhWVHUnOnTOjwwIzZn+DbSYhLy8n0JSqeBhxAzqucff5uEL/wzSveA0ZseU7
 gt/6D2alm5JrudMfLf6BfMhUVPphw7EuyTKs6zvttxWrFbftbFrSs5UKjY6FdjLWTEHx
 C/cy5paPXYHav1zjldRSJIetsvgU/qKX2bj9B1MwlFNQaV/hHGibHm4FCrDKQhdWRyCH
 YQkJAlqGkRRpHrQqIHdVSM5hraYIBUScesKw3oVNZ7OAAfRekSrzpsmQGZzxvi73Eo+d
 Q2dg==
X-Gm-Message-State: APjAAAWfQNPWYdxhozCFRsUpqdgykzRfEw3ZLVyQ4je5eZaRKsgju6rC
 ZyDYL5rgpON530ms2PpQN1NoIA5Lk4q5wlW6lX+IcKn8ZB8=
X-Google-Smtp-Source: APXvYqw9LO3+eSEWJjb8Ot3FiLArghXDH96ZH8siBTP1iQLzQizc+T3M7I8bmYJ5omGk4KKLRKlfZeTueq3xxuhhz/E=
X-Received: by 2002:a02:ab83:: with SMTP id t3mr113767468jan.133.1564417702210; 
 Mon, 29 Jul 2019 09:28:22 -0700 (PDT)
MIME-Version: 1.0
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 29 Jul 2019 19:28:11 +0300
Message-ID: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_092826_232225_4C025626 
X-CRM114-Status: UNSURE (   3.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d33 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 TRACKER_ID             BODY: Incorporates a tracking ID number
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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

2b074654b0f259518aa56e0975ca8e26c0c12bc9

I see no reason why not to build both ar71xx and ath79 for devices
that have been ported to ath79 already. Many people already use 19.07
branch and wait for the release.

That will require lots of custom builds. What is the point of excluding ath79?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
