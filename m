Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D2780360
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 02:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RmPGVO3RQlImJpE621MtbfJsUX1gWMml9Siv015wklU=; b=U3IFwtYYuigl4LXuf/MWN5o5Xd
	Tnmb5ATtfyqFySaafE78s4HcuoAY2TK8SQyOEqZTW7MOpLcZAEinEd8g/HxL4uL8iT03kXAX0BUiz
	TwAErWz4nVC3f8FqsLTtfY+XJ+AAVar+xf3jRiLbSECk9E2KH3Rqlub0Qie2qCH+fEnEyWhHp0UP9
	uIyst8KcrB5nYOWrW1pgeNFKfZW+8xnPhN1wukK4uFFtPbnVSvH7wFTrjCCUXkhFZCeyq8kYt6VsG
	8vFvzZIi395QAO6XL+D/vD/WDGf/kmCkuW2DB0g62uqzJVDvRT/bB1SWZ4yEIuaJd/cKE9LxIZXWL
	/bK+6Ghg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hthdn-00074Q-Um; Sat, 03 Aug 2019 00:11:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hthdg-00073l-PX
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 00:11:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so36756729pfe.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 02 Aug 2019 17:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=b82yFYapDrQFz+iq+jW2KGnTGPp7n6/pbuJjuCxCwBQ=;
 b=For6eCM/RBRIHtEnoo1LH6mBctwjkWo5dVHVDyzMp46UAVCkRlGhjfO9Rj9iCtpVzt
 GIdIB5V5oHIoEj48f+lT7J0za60Ne5lQ2vFJgiUjXhb3QZ2g1FG4AV8MKu2CkyKLs3bN
 z5JqaWpmgTJs71Uhh0tlxyOR9PckeBJYFgppi+4s/8HX0PggCtzC4q4HNLbzgsb9qdcr
 oU51RgNieTJjon+dUXM3C63GaN8lY8Tv5k7FTHj7WvOJ0ih4fnAvBagYBlCS9kYBVOH9
 qRWSdlkKal2/AkxYu/rNn646rbnzdQQ1+o+oXNai9SsBEDr7JC2YDLxJq86B8KD3B56P
 pvFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=b82yFYapDrQFz+iq+jW2KGnTGPp7n6/pbuJjuCxCwBQ=;
 b=GAyGnpVDPJ9izay8QMRDlXL6ihzhk0wyaIFZ73vCCd6oLBPceKG8XKCotQmZjwkHOu
 tsJBj25vJ++9UNlXlhyyUSbmPskWcy5YdSgQ+v/eji56eN43br4AyaYZ6CzIMSI68yqS
 b4iZgGdlQiE6btsL3SLQm/Xif8kxvv3GtTovVQQnOauAOmPeIacpGvJc3NFQb8k1GLUS
 9JiWJ38TH4YrZRXY/D0EeVc6+oYNq6W9GoxRUYuufcliptwGFOL0MSOs1QqKv5BapJ5k
 6hC2Ug4EXxuRBVU18hpVqasTu+9b+FYISFeq/Oz2pFTyRkMuuVBdq5S2ZY3MGX9UgJPu
 1mBg==
X-Gm-Message-State: APjAAAUNurypR/Q8fpAiloAJyKb/bpuHvLANw7WU797+N+RaxrSs/P8k
 EOjdekEoI0zC0cUzKwT9UFaKUToqFvc=
X-Google-Smtp-Source: APXvYqyHn3uJpTbA1BTShbH4Ik8EAhjsPbOKMTMOdkvii2KMXY90fI+oH4+IJUI1m85OVFAYDmsudg==
X-Received: by 2002:a63:b555:: with SMTP id
 u21mr128645966pgo.222.1564791068533; 
 Fri, 02 Aug 2019 17:11:08 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id h6sm73186817pfb.20.2019.08.02.17.11.07
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 17:11:08 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  2 Aug 2019 17:11:06 -0700
Message-Id: <20190803001106.25037-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190803001106.25037-1-rosenp@gmail.com>
References: <20190803001106.25037-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_171112_859591_1A596B29 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 2/2] mdadm: Include sys/sysmacros.h under
 musl as well.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Needed with musl version 1.1.23 as it no longer includes this header
internally. From changelog:

- sys/types.h no longer pollutes namespace with sys/sysmacros.h in any profile

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/mdadm/patches/102-sysmacros.patch | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 package/utils/mdadm/patches/102-sysmacros.patch

diff --git a/package/utils/mdadm/patches/102-sysmacros.patch b/package/utils/mdadm/patches/102-sysmacros.patch
new file mode 100644
index 0000000000..68ec719f15
--- /dev/null
+++ b/package/utils/mdadm/patches/102-sysmacros.patch
@@ -0,0 +1,11 @@
+--- a/mdadm.h
++++ b/mdadm.h
+@@ -45,7 +45,7 @@ extern __off64_t lseek64 __P ((int __fd, __off64_t __offset, int __whence));
+ #include	<errno.h>
+ #include	<string.h>
+ #include	<syslog.h>
+-#ifdef __GLIBC__
++#if 1
+ /* Newer glibc requires sys/sysmacros.h directly for makedev() */
+ #include	<sys/sysmacros.h>
+ #endif
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
