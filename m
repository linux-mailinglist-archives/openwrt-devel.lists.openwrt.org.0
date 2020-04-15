Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F0B1AB472
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 01:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dW2EgkW4jAV9oDP5l+Y/BAv+g6Kf5222jEGmcWz2uuw=; b=X16
	jO++qjw/o4ABCQplWQDp35HyfqV9g6sdWHwNUxopWQm0GnPD7rdAggqkg5y0aoGFlzdZMNFofXRUE
	fo6ip5ECs+J4Nir5VDBwco8VThnSrbztdiPBlT/IIGWs1yTzQYNWeeS3tnlTRzcSP00JVNKxcYjvN
	7U/aIdgpBoYyiwj8Yv0tG/afl5icFJ67gkrb4Xa0FMVGy8+AKMxmdTYkLypxJZPqvRxE2CcE3X34L
	6ubW5JJtr0jMpq3g030RPspTauBtIkYykI5as4U0FiJrlfbXvvVzRL0L9Jc9PgKdfURffndyzy1nf
	625+Rjsfs4cX5Lo4tZh1tWJmW0iwC1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOrqY-0002Il-R8; Wed, 15 Apr 2020 23:53:34 +0000
Date: Wed, 15 Apr 2020 18:53:13 -0500
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.4028.1586994811.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Thomas Albers via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Thomas Albers <thomas.gameiro@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] linux/generic: remove obsolete config
 option LEDS_TRIGGER_IDE_DISK
Content-Type: multipart/mixed; boundary="===============7019018661596250709=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7019018661596250709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7019018661596250709==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOrqS-0002I4-JY
	for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 23:53:29 +0000
Received: by mail-ua1-x944.google.com with SMTP id c24so1536902uap.13
        for <openwrt-devel@lists.openwrt.org>; Wed, 15 Apr 2020 16:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=336H1scMHGgl3edu2zcTSJuY686Ogbnsqz39oPK+BnY=;
        b=pyb9PekP4yKe2qgCg12nmEX+i/JjpyRNIkaq9z9d6zHoeqm7rdIRVwarpYTpSz3eG4
         APJrbRBqeLx1Lqu+xTNijLhR4eU0ThQUotWpJyq/TGVxrLSMtnEDZPLUjNEM5IJKyT1z
         W0m0hihmAeFJL9Fj8Cj36Dse1xDpiJZyXiP4nW3ebXteXKxhVCIEda4qXLMHGfQzlvPf
         Y79LxwXWEgiRfLH8oUgR8kntadnA4X6xXt0OHJRFr+D9A53pcHncqD4Kp4psk+dYGzog
         MwO3K5uaI7TFx9ftuBAso/A0Scn+a92nkW1fNOHSJpn41XttxRfvkot2xQ7v07y+tXRJ
         UA+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=336H1scMHGgl3edu2zcTSJuY686Ogbnsqz39oPK+BnY=;
        b=QrssC3OQd/WUBHzcGwPjeJbhFVbuO1zs+uYOQVQSlgh6dGi9Bw0Esw5QHwS/hXy1Af
         FSPN+qRfiI45zA/Otec9ZFZ6LKS5i+GAavuJn8SjGGcC3vaZm5731VOHQxx1m4haf7OE
         sfUOM2xGMNKlVCsEj6S2nAQaO9r2LMscSDV2vc1oAj84cMQ91OS4Ko7cdpysqDTGXE86
         H/xHLYm78WngZuJL8y2V1cXwReY77ZnLhwNX98rVPfc4kx/FF7wFE2UrHweEVpr7jH63
         ZfV0PswZNGAv+Pir83WqwyoAjotALSbsoMvkyEu3T+HAaweLJ+VBSgt5PbXap0ZuYFnc
         VjTQ==
X-Gm-Message-State: AGi0PuZvSF6oHtfIeEegMLZ1gMXZRFnmTGBtkekRFGnz9WlGOvIMzx1P
	A2gRtvBBaQDSOEO5WbX31fGZG6TNwYXG/u9jsEvQrxR9
X-Google-Smtp-Source: APiQypKiFSewMZNM1bdZg1Ot1oRDZZ37mKv5q4CYABkppshU0Hog3exbSmIuFsztE8PzsawRyDxhP1pYck/h6v0dXV0=
X-Received: by 2002:ab0:728d:: with SMTP id w13mr2585943uao.48.1586994804644;
 Wed, 15 Apr 2020 16:53:24 -0700 (PDT)
MIME-Version: 1.0
From: Thomas Albers <thomas.gameiro@googlemail.com>
Date: Wed, 15 Apr 2020 18:53:13 -0500
Message-ID: <CALYGOBVhDveYTXqp+K8N08i9RLy4d7jszsf8vLVQ-=go4y=vrA@mail.gmail.com>
Subject: [PATCH] linux/generic: remove obsolete config option LEDS_TRIGGER_IDE_DISK
To: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_165328_666102_08A87932 
X-CRM114-Status: UNSURE (   5.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:944 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [thomas.gameiro[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Kernel config option LEDS_TRIGGER_IDE_DISK was removed in kernel 4.8
and replaced with option CONFIG_LEDS_TRIGGER_DISK

Signed-off by Thomas Albers <thomas.gameiro@googlemail.com>
---
diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index cd087227ae..fbfe6bb971 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -2380,7 +2380,6 @@ CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
 # CONFIG_LEDS_TRIGGER_DISK is not set
 # CONFIG_LEDS_TRIGGER_GPIO is not set
 # CONFIG_LEDS_TRIGGER_HEARTBEAT is not set
-# CONFIG_LEDS_TRIGGER_IDE_DISK is not set
 # CONFIG_LEDS_TRIGGER_MTD is not set
 CONFIG_LEDS_TRIGGER_NETDEV=y
 # CONFIG_LEDS_TRIGGER_ONESHOT is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index 4ce3de57ad..cf320bfcea 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -2513,7 +2513,6 @@ CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
 # CONFIG_LEDS_TRIGGER_DISK is not set
 # CONFIG_LEDS_TRIGGER_GPIO is not set
 # CONFIG_LEDS_TRIGGER_HEARTBEAT is not set
-# CONFIG_LEDS_TRIGGER_IDE_DISK is not set
 # CONFIG_LEDS_TRIGGER_MTD is not set
 CONFIG_LEDS_TRIGGER_NETDEV=y
 # CONFIG_LEDS_TRIGGER_ONESHOT is not set
diff --git a/target/linux/generic/config-5.4 b/target/linux/generic/config-5.4
index 21dd447cdf..eb189cf597 100644
--- a/target/linux/generic/config-5.4
+++ b/target/linux/generic/config-5.4
@@ -2673,7 +2673,6 @@ CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
 # CONFIG_LEDS_TRIGGER_DISK is not set
 # CONFIG_LEDS_TRIGGER_GPIO is not set
 # CONFIG_LEDS_TRIGGER_HEARTBEAT is not set
-# CONFIG_LEDS_TRIGGER_IDE_DISK is not set
 # CONFIG_LEDS_TRIGGER_MTD is not set
 CONFIG_LEDS_TRIGGER_NETDEV=y
 # CONFIG_LEDS_TRIGGER_ONESHOT is not set


--===============7019018661596250709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7019018661596250709==--
