Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFC61B949D
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 01:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/jkIF04hXiVOzCWzKu2Dd1xWNAbQ95mJQ6e2zy6Bdek=; b=ZxPYifcAMeiUdU
	/N88r+a2YvJBdBswzVU7Nvhmd7o8S2xmeEXX6CrzcTV2/nP0Hy6aNb6nSwbS9w/UygZYmE0OO6Ejo
	Jnp5rlXG5qne/VEZmXU0ltFkPYJgI409JRVAZvR6Fpa63wQnceT9Pqm6a5PrQCJsGy1RNwi5I9fu+
	mNQaH24op/rL15bKdc4T7jGHHBDq80AnIb9TPo125EltWitZqpvhtt+N4mRW8/iuyItr+Hcw0hvvW
	V5sWL8GRBhn0V8EgRQWxxJfqVMmlXVXl1cpbbUKtZEGn3X0JdPBSgAUiz5uAkt6BxbQkkIVFd2UQk
	xxdkFmG1ibky0KzncYpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSqWt-0002BW-Ay; Sun, 26 Apr 2020 23:17:43 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSqWl-0002AS-9O
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 23:17:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id j7so7790476pgj.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 16:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SX78EKzbBW4F41x7n/pGjH0lw8ut9VfODtJhV79F3rU=;
 b=cNcYwYI1ojMNOcq2wv5WZbZhBYSsdnPKlt9lN6qTUatQhnup29thC5V7MqJjEKjwfU
 ubFPcy6TvrzxchuGrHS+PvmtZjeufX4v2yAzZlE61lv0cy2+J0UaHa7m9JXKdHMbimJs
 oRL1C8OJ3uZ0aA9UUTmXqKSVqBm30oNStZ9WLCGLt0hX3UJ7gAQmhWqc8WmyPQ8bx2T8
 IFMXqfZLXESiGraEjyDV5G0CBEWxxnUDuCvQPOPD+R4O3W72mc7GEtvp8qJSgHf0peiO
 tof+Kr2wBWaKhzAJRqv2y8U5q3QiirdbPi33nk45ay9VEs3iM0K8ZBK6gbPVrZ73pIzC
 skfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SX78EKzbBW4F41x7n/pGjH0lw8ut9VfODtJhV79F3rU=;
 b=suojnpk+cQTLS+/eSrQwmE0ifqxcDcTBUzV8AAoM/ehl8F+yV4z58VxUtgy+FLY6KF
 6V4Y6rP7kE1Kb16ETkAwWj2YtP6rYjbvCRjOT0s6wx1OKat1CaWSC9WwdtZcQ3hYqt+B
 uPDT0Mi2j3GFroYoV0/B0hjS0+MC7mejiyrMdPPrbNu0zik5Up8LByElxzoiBb/HlE2B
 KJIAB6+tMgJDrSwo1TbgHSeM8ljNR733wl15HX3TmaRnKIKVTtOTjB2kikeerrCSH7Sg
 j1iNhv6YkZ5dhpwLWeYIXYWbnH6mfFB/QdZQ4g29q4Kc5fILfURllKA06PkKqJj6uZHK
 UVSg==
X-Gm-Message-State: AGi0PuY/MReQVCxymAmGJ0Cr6+fVMRfbj2L0x/tvklYZ2ECUn4Y+ag7z
 Ba1Udec3INh3d03L2d3cQ3Wq8bKXtuA=
X-Google-Smtp-Source: APiQypLFGarboSNn2aXtJNOCM3OI0q1+2Em3WFJsBOIXzwPNNdPih2ISgsUqDT17/RUzhtwk2q78tQ==
X-Received: by 2002:a63:1820:: with SMTP id y32mr19508495pgl.182.1587943053597; 
 Sun, 26 Apr 2020 16:17:33 -0700 (PDT)
Received: from localhost.localdomain (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id d2sm11087391pfc.7.2020.04.26.16.17.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 16:17:32 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 26 Apr 2020 16:17:30 -0700
Message-Id: <20200426231731.1206430-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_161735_354936_24CA3A72 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] exfat-utils: rename to exfatprogs as
 upstream has done
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

Based on kernel.org feedback, this has been renamed for consistency
between the other filesystem progs.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/{exfat-utils => exfatprogs}/Makefile | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename package/utils/{exfat-utils => exfatprogs}/Makefile (100%)

diff --git a/package/utils/exfat-utils/Makefile b/package/utils/exfatprogs/Makefile
similarity index 100%
rename from package/utils/exfat-utils/Makefile
rename to package/utils/exfatprogs/Makefile
-- 
2.25.3


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
